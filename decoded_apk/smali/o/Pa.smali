.class public final Lo/Pa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Lo/g;


# instance fields
.field public final a:Lo/d5;

.field public final b:Lo/d5;

.field public final c:Lo/d5;

.field public final d:Lo/d5;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lo/g;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lo/g;-><init>(F)V

    .line 7
    sput-object v0, Lo/Pa;->e:Lo/g;

    .line 9
    return-void
.end method

.method public constructor <init>(Lo/d5;Lo/d5;Lo/d5;Lo/d5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lo/Pa;->a:Lo/d5;

    .line 6
    iput-object p3, p0, Lo/Pa;->b:Lo/d5;

    .line 8
    iput-object p4, p0, Lo/Pa;->c:Lo/d5;

    .line 10
    iput-object p2, p0, Lo/Pa;->d:Lo/d5;

    .line 12
    return-void
.end method
