.class public final Lo/Gf;
.super Lo/Ha;
.source "SourceFile"


# instance fields
.field public final synthetic k:Lo/Ha;

.field public final synthetic l:Lo/If;


# direct methods
.method public constructor <init>(Lo/If;Lo/Ha;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lo/Gf;->l:Lo/If;

    .line 6
    iput-object p2, p0, Lo/Gf;->k:Lo/Ha;

    .line 8
    return-void
.end method


# virtual methods
.method public final h0(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/Gf;->l:Lo/If;

    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lo/If;->m:Z

    .line 6
    iget-object v0, p0, Lo/Gf;->k:Lo/Ha;

    .line 8
    invoke-virtual {v0, p1}, Lo/Ha;->h0(I)V

    .line 11
    return-void
.end method

.method public final i0(Landroid/graphics/Typeface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo/Gf;->l:Lo/If;

    .line 3
    iget v1, v0, Lo/If;->c:I

    .line 5
    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 8
    move-result-object p1

    .line 9
    iput-object p1, v0, Lo/If;->n:Landroid/graphics/Typeface;

    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, v0, Lo/If;->m:Z

    .line 14
    iget-object p1, v0, Lo/If;->n:Landroid/graphics/Typeface;

    .line 16
    const/4 v0, 0x0

    .line 17
    iget-object v1, p0, Lo/Gf;->k:Lo/Ha;

    .line 19
    invoke-virtual {v1, p1, v0}, Lo/Ha;->j0(Landroid/graphics/Typeface;Z)V

    .line 22
    return-void
.end method
