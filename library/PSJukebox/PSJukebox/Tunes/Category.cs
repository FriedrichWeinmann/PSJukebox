using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PSJukebox.Tunes
{
    /// <summary>
    /// The categories of tunes available
    /// </summary>
    public class Category
    {
        /// <summary>
        /// The name of the category
        /// </summary>
        public string Name;

        /// <summary>
        /// What the category represents
        /// </summary>
        public string Description;

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
