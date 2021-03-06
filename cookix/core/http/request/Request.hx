package cookix.core.http.request;

/**
 * Request manager
 * @author Axel Anceau (Peekmo)
 */
class Request
{
    /**
     * Create a.http.requestfor the given language
     * @return RequestInterface
     */
    public static function create() : Dynamic
    {
        var request: Dynamic;

        #if php
            return new RequestPhp();
        #elseif neko
            return new RequestNeko();
        #end

        return null;
    }
}