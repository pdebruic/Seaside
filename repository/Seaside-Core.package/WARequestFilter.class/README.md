WARequestFilter is an implementation for the chain-of-responsibility and decorator pattern for request handlers. Request filters are a way of hooking into the request handling. There is no limit on what they can do, examples include
 - preprocess the request
 - postprocess the response
 - set up thread locals or expection handlers
 - return a different response (eg. from cache or access denied) 

This functionality is also known as servlet filters, WSGI infrastructure or rack infrastructure.

Instance Variables:
	next	<WAValueHolder<WARequestFilter>>
		
next
	- The next filter in the chain.