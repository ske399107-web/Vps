.class public final Lo/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lo/n;


# instance fields
.field public volatile a:Ljava/lang/Thread;

.field public volatile b:Lo/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lo/n;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lo/n;->c:Lo/n;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v0, Lo/o;->f:Lo/x9;

    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, p0, v1}, Lo/x9;->N(Lo/n;Ljava/lang/Thread;)V

    .line 13
    return-void
.end method
