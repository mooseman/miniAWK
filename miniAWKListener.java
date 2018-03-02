// Generated from miniAWK.g4 by ANTLR 4.7.1
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link miniAWKParser}.
 */
public interface miniAWKListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link miniAWKParser#prog}.
	 * @param ctx the parse tree
	 */
	void enterProg(miniAWKParser.ProgContext ctx);
	/**
	 * Exit a parse tree produced by {@link miniAWKParser#prog}.
	 * @param ctx the parse tree
	 */
	void exitProg(miniAWKParser.ProgContext ctx);
	/**
	 * Enter a parse tree produced by {@link miniAWKParser#block}.
	 * @param ctx the parse tree
	 */
	void enterBlock(miniAWKParser.BlockContext ctx);
	/**
	 * Exit a parse tree produced by {@link miniAWKParser#block}.
	 * @param ctx the parse tree
	 */
	void exitBlock(miniAWKParser.BlockContext ctx);
	/**
	 * Enter a parse tree produced by {@link miniAWKParser#begin_block}.
	 * @param ctx the parse tree
	 */
	void enterBegin_block(miniAWKParser.Begin_blockContext ctx);
	/**
	 * Exit a parse tree produced by {@link miniAWKParser#begin_block}.
	 * @param ctx the parse tree
	 */
	void exitBegin_block(miniAWKParser.Begin_blockContext ctx);
	/**
	 * Enter a parse tree produced by {@link miniAWKParser#stmt_block}.
	 * @param ctx the parse tree
	 */
	void enterStmt_block(miniAWKParser.Stmt_blockContext ctx);
	/**
	 * Exit a parse tree produced by {@link miniAWKParser#stmt_block}.
	 * @param ctx the parse tree
	 */
	void exitStmt_block(miniAWKParser.Stmt_blockContext ctx);
	/**
	 * Enter a parse tree produced by {@link miniAWKParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterStmt(miniAWKParser.StmtContext ctx);
	/**
	 * Exit a parse tree produced by {@link miniAWKParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitStmt(miniAWKParser.StmtContext ctx);
	/**
	 * Enter a parse tree produced by {@link miniAWKParser#string}.
	 * @param ctx the parse tree
	 */
	void enterString(miniAWKParser.StringContext ctx);
	/**
	 * Exit a parse tree produced by {@link miniAWKParser#string}.
	 * @param ctx the parse tree
	 */
	void exitString(miniAWKParser.StringContext ctx);
	/**
	 * Enter a parse tree produced by {@link miniAWKParser#number}.
	 * @param ctx the parse tree
	 */
	void enterNumber(miniAWKParser.NumberContext ctx);
	/**
	 * Exit a parse tree produced by {@link miniAWKParser#number}.
	 * @param ctx the parse tree
	 */
	void exitNumber(miniAWKParser.NumberContext ctx);
	/**
	 * Enter a parse tree produced by {@link miniAWKParser#id}.
	 * @param ctx the parse tree
	 */
	void enterId(miniAWKParser.IdContext ctx);
	/**
	 * Exit a parse tree produced by {@link miniAWKParser#id}.
	 * @param ctx the parse tree
	 */
	void exitId(miniAWKParser.IdContext ctx);
	/**
	 * Enter a parse tree produced by {@link miniAWKParser#field}.
	 * @param ctx the parse tree
	 */
	void enterField(miniAWKParser.FieldContext ctx);
	/**
	 * Exit a parse tree produced by {@link miniAWKParser#field}.
	 * @param ctx the parse tree
	 */
	void exitField(miniAWKParser.FieldContext ctx);
	/**
	 * Enter a parse tree produced by {@link miniAWKParser#end_block}.
	 * @param ctx the parse tree
	 */
	void enterEnd_block(miniAWKParser.End_blockContext ctx);
	/**
	 * Exit a parse tree produced by {@link miniAWKParser#end_block}.
	 * @param ctx the parse tree
	 */
	void exitEnd_block(miniAWKParser.End_blockContext ctx);
}