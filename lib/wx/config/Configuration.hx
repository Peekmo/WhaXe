package wx.config;

import wx.tools.JsonDynamic;

/**
 * Configuration checker
 * @author Axel Anceau (Peekmo)
 */
class Configuration
{
    /**
     * @var JsonDynamic: configuration Application's configuration built with the macro
     */
    public var configuration : JsonDynamic (null, null);

    /**
     * Constructor
     * Gets configuration from macro
     */
    public function new()
    {
        this.configuration = ConfigurationMacro.getConfiguration();
    }

    /**
     * Get application's configuration ptions
     * @return JsonDynamic
     */
    public function getConfiguration() : JsonDynamic
    {
        return this.configuration;
    }
}