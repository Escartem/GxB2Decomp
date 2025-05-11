using HTMLEngine.Core;

namespace HTMLEngine
{
	public abstract class HtFont
	{
		public string Face { get; private set; }

		public int Size { get; private set; }

		public bool Bold { get; private set; }

		public bool Italic { get; private set; }

		public abstract int LineSpacing { get; }

		public abstract int WhiteSize { get; }

		protected HtFont(string face, int size, bool bold, bool italic)
		{
		}

		public abstract HtSize Measure(string text);

		public abstract void Draw(string id, HtRect rect, HtColor color, string text, bool isEffect, DrawTextEffect effect, HtColor effectColor, int effectAmount, string linkText, object userData);

		public override string ToString()
		{
			return null;
		}
	}
}
