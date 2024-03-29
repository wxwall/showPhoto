package cn.javass.common.web.filter;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class ImageFilter implements Filter {

    private static final List<String> contentTypes = new ArrayList<String>();
    private static final Map<String, String> imageTypes = new HashMap<String, String>();

    private static Logger LOGGER = LoggerFactory.getLogger(ImageFilter.class);

    private List<String> filterDate = new ArrayList<String>();

    @Override
    public void init(FilterConfig config) throws ServletException {

        String dateStr = config.getInitParameter("filterDate");

        if (dateStr != null) {
            String[] dates = dateStr.split(",");
            for (String date : dates) {
                filterDate.add(date);
            }
        }

        contentTypes.add("image/bmp");
        imageTypes.put("image/bmp", "bmp");
        contentTypes.add("image/gif");
        imageTypes.put("image/gif", "gif");
        contentTypes.add("image/jpeg");
        imageTypes.put("image/jpeg", "jpeg");
        contentTypes.add("image/png");
        imageTypes.put("image/png", "png");
        contentTypes.add("image/vnd.wap.wbmp");
        imageTypes.put("image/vnd.wap.wbmp", "bmp");
    }

    @Override
    public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws IOException,
            ServletException {
        HttpServletRequest request = (HttpServletRequest) req;

        if (isImageRequest(request) && isFilter()) {
            HttpServletResponse response = (HttpServletResponse) res;
            ImageResponseWrapper wrappedResponse = new ImageResponseWrapper(response, getImageType(request));
            chain.doFilter(req, wrappedResponse);
            wrappedResponse.finishResponse();
            return;
        }
        chain.doFilter(req, res);
    }

    private String getImageType(HttpServletRequest request) {
        String accept = request.getHeader("Accept");
        for (String c : contentTypes) {
            if (accept.contains(c)) {
                return imageTypes.get(c);
            }
        }
        return "jpeg";
    }

    private boolean isImageRequest(HttpServletRequest request) {
        String accept = request.getHeader("Accept");
        for (String c : contentTypes) {
            if (accept.contains(c)) {
                if (LOGGER.isDebugEnabled()) {
                    LOGGER.debug("{} is image request,Accept:{}", request.getRequestURI(), accept);
                }
                return true;
            }
        }
        return false;
    }

    private boolean isFilter() {
        Date currDate = new Date();
        for (String date : filterDate) {
            if (new SimpleDateFormat("MM-dd").format(currDate).equals(date)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public void destroy() {

    }

    public static void main(String[] args) {
        System.out.println(new SimpleDateFormat("MM-dd").format(new Date()));
    }
}
