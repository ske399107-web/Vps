.class public final Lo/Y6;
.super Lo/Sf;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lo/b7;


# direct methods
.method public constructor <init>(Lo/b7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lo/Y6;->a:Lo/b7;

    .line 6
    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lo/Y6;->a:Lo/b7;

    .line 3
    invoke-virtual {p1}, Lo/b7;->b()Lo/c7;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lo/c7;->a()V

    .line 10
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget-object p1, p0, Lo/Y6;->a:Lo/b7;

    .line 3
    invoke-virtual {p1}, Lo/b7;->b()Lo/c7;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lo/c7;->b()V

    .line 10
    return-void
.end method
