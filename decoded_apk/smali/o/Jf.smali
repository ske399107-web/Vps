.class public abstract Lo/Jf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lo/h3;

.field public static final b:Lo/h3;

.field public static final c:Lo/h3;

.field public static final d:Lo/h3;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lo/h3;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Lo/h3;-><init>(Lo/u6;Z)V

    .line 8
    sput-object v0, Lo/Jf;->a:Lo/h3;

    .line 10
    new-instance v0, Lo/h3;

    .line 12
    const/4 v3, 0x1

    .line 13
    invoke-direct {v0, v1, v3}, Lo/h3;-><init>(Lo/u6;Z)V

    .line 16
    sput-object v0, Lo/Jf;->b:Lo/h3;

    .line 18
    new-instance v0, Lo/h3;

    .line 20
    sget-object v1, Lo/u6;->b:Lo/u6;

    .line 22
    invoke-direct {v0, v1, v2}, Lo/h3;-><init>(Lo/u6;Z)V

    .line 25
    sput-object v0, Lo/Jf;->c:Lo/h3;

    .line 27
    new-instance v0, Lo/h3;

    .line 29
    invoke-direct {v0, v1, v3}, Lo/h3;-><init>(Lo/u6;Z)V

    .line 32
    sput-object v0, Lo/Jf;->d:Lo/h3;

    .line 34
    return-void
.end method
