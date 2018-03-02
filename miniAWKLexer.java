// Generated from miniAWK.g4 by ANTLR 4.7.1
import org.antlr.v4.runtime.Lexer;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.TokenStream;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.misc.*;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class miniAWKLexer extends Lexer {
	static { RuntimeMetaData.checkVersion("4.7.1", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__0=1, T__1=2, T__2=3, STRINGLITERAL=4, NUMBER=5, ID=6, BEGIN=7, END=8;
	public static String[] channelNames = {
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	};

	public static String[] modeNames = {
		"DEFAULT_MODE"
	};

	public static final String[] ruleNames = {
		"T__0", "T__1", "T__2", "STRINGLITERAL", "NUMBER", "ID", "BEGIN", "END"
	};

	private static final String[] _LITERAL_NAMES = {
		null, "'{'", "'}'", "'$'"
	};
	private static final String[] _SYMBOLIC_NAMES = {
		null, null, null, null, "STRINGLITERAL", "NUMBER", "ID", "BEGIN", "END"
	};
	public static final Vocabulary VOCABULARY = new VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

	/**
	 * @deprecated Use {@link #VOCABULARY} instead.
	 */
	@Deprecated
	public static final String[] tokenNames;
	static {
		tokenNames = new String[_SYMBOLIC_NAMES.length];
		for (int i = 0; i < tokenNames.length; i++) {
			tokenNames[i] = VOCABULARY.getLiteralName(i);
			if (tokenNames[i] == null) {
				tokenNames[i] = VOCABULARY.getSymbolicName(i);
			}

			if (tokenNames[i] == null) {
				tokenNames[i] = "<INVALID>";
			}
		}
	}

	@Override
	@Deprecated
	public String[] getTokenNames() {
		return tokenNames;
	}

	@Override

	public Vocabulary getVocabulary() {
		return VOCABULARY;
	}


	public miniAWKLexer(CharStream input) {
		super(input);
		_interp = new LexerATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	@Override
	public String getGrammarFileName() { return "miniAWK.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public String[] getChannelNames() { return channelNames; }

	@Override
	public String[] getModeNames() { return modeNames; }

	@Override
	public ATN getATN() { return _ATN; }

	public static final String _serializedATN =
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\2\nI\b\1\4\2\t\2\4"+
		"\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\3\2\3\2\3\3\3\3"+
		"\3\4\3\4\3\5\3\5\7\5\34\n\5\f\5\16\5\37\13\5\3\5\3\5\3\6\6\6$\n\6\r\6"+
		"\16\6%\3\6\3\6\6\6*\n\6\r\6\16\6+\5\6.\n\6\3\7\3\7\6\7\62\n\7\r\7\16\7"+
		"\63\3\b\3\b\3\b\3\b\3\b\3\b\3\b\3\b\3\b\3\b\5\b@\n\b\3\t\3\t\3\t\3\t\3"+
		"\t\3\t\5\tH\n\t\2\2\n\3\3\5\4\7\5\t\6\13\7\r\b\17\t\21\n\3\2\6\5\2\f\f"+
		"\17\17$$\3\2\62;\5\2C\\aac|\6\2\62;C\\aac|\2O\2\3\3\2\2\2\2\5\3\2\2\2"+
		"\2\7\3\2\2\2\2\t\3\2\2\2\2\13\3\2\2\2\2\r\3\2\2\2\2\17\3\2\2\2\2\21\3"+
		"\2\2\2\3\23\3\2\2\2\5\25\3\2\2\2\7\27\3\2\2\2\t\31\3\2\2\2\13#\3\2\2\2"+
		"\r/\3\2\2\2\17?\3\2\2\2\21G\3\2\2\2\23\24\7}\2\2\24\4\3\2\2\2\25\26\7"+
		"\177\2\2\26\6\3\2\2\2\27\30\7&\2\2\30\b\3\2\2\2\31\35\7$\2\2\32\34\n\2"+
		"\2\2\33\32\3\2\2\2\34\37\3\2\2\2\35\33\3\2\2\2\35\36\3\2\2\2\36 \3\2\2"+
		"\2\37\35\3\2\2\2 !\7$\2\2!\n\3\2\2\2\"$\t\3\2\2#\"\3\2\2\2$%\3\2\2\2%"+
		"#\3\2\2\2%&\3\2\2\2&-\3\2\2\2\')\7\60\2\2(*\t\3\2\2)(\3\2\2\2*+\3\2\2"+
		"\2+)\3\2\2\2+,\3\2\2\2,.\3\2\2\2-\'\3\2\2\2-.\3\2\2\2.\f\3\2\2\2/\61\t"+
		"\4\2\2\60\62\t\5\2\2\61\60\3\2\2\2\62\63\3\2\2\2\63\61\3\2\2\2\63\64\3"+
		"\2\2\2\64\16\3\2\2\2\65\66\7D\2\2\66\67\7G\2\2\678\7I\2\289\7K\2\29@\7"+
		"P\2\2:;\7d\2\2;<\7g\2\2<=\7i\2\2=>\7k\2\2>@\7p\2\2?\65\3\2\2\2?:\3\2\2"+
		"\2@\20\3\2\2\2AB\7G\2\2BC\7P\2\2CH\7F\2\2DE\7g\2\2EF\7p\2\2FH\7f\2\2G"+
		"A\3\2\2\2GD\3\2\2\2H\22\3\2\2\2\n\2\35%+-\63?G\2";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}