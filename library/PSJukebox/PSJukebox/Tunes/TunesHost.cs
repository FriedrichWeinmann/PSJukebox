using System;
using System.Collections;

namespace PSJukebox.Tunes
{
    /// <summary>
    /// Host class providing infrastructure for the tunes commands
    /// </summary>
    public static class TunesHost
    {
        /// <summary>
        /// The master list of available catorgries
        /// </summary>
        public static Hashtable Categories = new Hashtable(StringComparer.InvariantCultureIgnoreCase);

        /// <summary>
        /// List of stored tunes
        /// </summary>
        public static Hashtable Tunes = new Hashtable(StringComparer.InvariantCultureIgnoreCase);
    }
}
