using System;
using System.Management.Automation;

namespace PSJukebox.Tunes
{
    /// <summary>
    /// The tune to play
    /// </summary>
    public class Tune
    {
        /// <summary>
        /// The name of the tune
        /// </summary>
        public string Name;

        /// <summary>
        /// A description of what the tune is for
        /// </summary>
        public string Description;

        /// <summary>
        /// Link to an online resource
        /// </summary>
        public Uri Link;

        /// <summary>
        /// The actual code running the tune
        /// </summary>
        public ScriptBlock Code;

        /// <summary>
        /// The category the tune is part of
        /// </summary>
        public Category Category;

        /// <summary>
        /// The string representation of the object.
        /// </summary>
        /// <returns>The string representation of the object.</returns>
        public override string ToString()
        {
            return Name;
        }
    }
}
