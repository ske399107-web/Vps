.class public final synthetic Lo/R5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lo/S5;

.field public final synthetic b:I

.field public final synthetic c:Ljava/io/Serializable;


# direct methods
.method public synthetic constructor <init>(Lo/S5;ILjava/io/Serializable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/R5;->a:Lo/S5;

    iput p2, p0, Lo/R5;->b:I

    iput-object p3, p0, Lo/R5;->c:Ljava/io/Serializable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lo/R5;->a:Lo/S5;

    .line 3
    iget-object v0, v0, Lo/S5;->b:Lo/Vc;

    .line 5
    iget v1, p0, Lo/R5;->b:I

    .line 7
    iget-object v2, p0, Lo/R5;->c:Ljava/io/Serializable;

    .line 9
    invoke-interface {v0, v1, v2}, Lo/Vc;->e(ILjava/io/Serializable;)V

    .line 12
    return-void
.end method
