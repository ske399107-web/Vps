.class public final Lo/Uf;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lo/u8;


# direct methods
.method public constructor <init>(Lo/u8;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/Uf;->a:Lo/u8;

    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/Uf;->a:Lo/u8;

    .line 3
    invoke-interface {v0}, Lo/u8;->a()Ljava/lang/Object;

    .line 6
    return-void
.end method
