.class public final synthetic Lo/qe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/P9;


# instance fields
.field public final synthetic a:Lo/b1;


# direct methods
.method public synthetic constructor <init>(Lo/b1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/qe;->a:Lo/b1;

    return-void
.end method


# virtual methods
.method public final b(Lo/R9;Lo/L9;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lo/qe;->a:Lo/b1;

    .line 3
    const-string v0, "this$0"

    .line 5
    invoke-static {p1, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object v0, Lo/L9;->ON_START:Lo/L9;

    .line 10
    if-ne p2, v0, :cond_0

    .line 12
    const/4 p2, 0x1

    .line 13
    iput-boolean p2, p1, Lo/b1;->e:Z

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object v0, Lo/L9;->ON_STOP:Lo/L9;

    .line 18
    if-ne p2, v0, :cond_1

    .line 20
    const/4 p2, 0x0

    .line 21
    iput-boolean p2, p1, Lo/b1;->e:Z

    .line 23
    :cond_1
    :goto_0
    return-void
.end method
