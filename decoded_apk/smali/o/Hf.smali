.class public final Lo/Hf;
.super Lo/Ha;
.source "SourceFile"


# instance fields
.field public final synthetic k:Landroid/content/Context;

.field public final synthetic l:Landroid/text/TextPaint;

.field public final synthetic m:Lo/Ha;

.field public final synthetic n:Lo/If;


# direct methods
.method public constructor <init>(Lo/If;Landroid/content/Context;Landroid/text/TextPaint;Lo/Ha;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lo/Hf;->n:Lo/If;

    .line 6
    iput-object p2, p0, Lo/Hf;->k:Landroid/content/Context;

    .line 8
    iput-object p3, p0, Lo/Hf;->l:Landroid/text/TextPaint;

    .line 10
    iput-object p4, p0, Lo/Hf;->m:Lo/Ha;

    .line 12
    return-void
.end method


# virtual methods
.method public final h0(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/Hf;->m:Lo/Ha;

    .line 3
    invoke-virtual {v0, p1}, Lo/Ha;->h0(I)V

    .line 6
    return-void
.end method

.method public final j0(Landroid/graphics/Typeface;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lo/Hf;->l:Landroid/text/TextPaint;

    .line 3
    iget-object v1, p0, Lo/Hf;->n:Lo/If;

    .line 5
    iget-object v2, p0, Lo/Hf;->k:Landroid/content/Context;

    .line 7
    invoke-virtual {v1, v2, v0, p1}, Lo/If;->g(Landroid/content/Context;Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    .line 10
    iget-object v0, p0, Lo/Hf;->m:Lo/Ha;

    .line 12
    invoke-virtual {v0, p1, p2}, Lo/Ha;->j0(Landroid/graphics/Typeface;Z)V

    .line 15
    return-void
.end method
