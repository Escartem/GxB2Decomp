namespace Org.BouncyCastle.Crypto.Engines
{
	public class RC532Engine : IBlockCipher
	{
		private int _noRounds;

		private int[] _S;

		private static readonly int P32;

		private static readonly int Q32;

		private bool forEncryption;

		public virtual string AlgorithmName
		{
			get
			{
				return null;
			}
		}

		public virtual bool IsPartialBlockOkay
		{
			get
			{
				return false;
			}
		}

		public virtual int GetBlockSize()
		{
			return 0;
		}

		public virtual void Init(bool forEncryption, ICipherParameters parameters)
		{
		}

		public virtual int ProcessBlock(byte[] input, int inOff, byte[] output, int outOff)
		{
			return 0;
		}

		public virtual void Reset()
		{
		}

		private void SetKey(byte[] key)
		{
		}

		private int EncryptBlock(byte[] input, int inOff, byte[] outBytes, int outOff)
		{
			return 0;
		}

		private int DecryptBlock(byte[] input, int inOff, byte[] outBytes, int outOff)
		{
			return 0;
		}

		private int RotateLeft(int x, int y)
		{
			return 0;
		}

		private int RotateRight(int x, int y)
		{
			return 0;
		}

		private int BytesToWord(byte[] src, int srcOff)
		{
			return 0;
		}

		private void WordToBytes(int word, byte[] dst, int dstOff)
		{
		}
	}
}
