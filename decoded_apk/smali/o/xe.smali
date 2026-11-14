.class public final Lo/xe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final synthetic a:Lo/H1;


# direct methods
.method public constructor <init>(Lo/H1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lo/xe;->a:Lo/H1;

    .line 6
    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    iget-object v0, p0, Lo/xe;->a:Lo/H1;

    .line 3
    new-instance v1, Lo/M5;

    .line 5
    invoke-direct {v1, v0}, Lo/M5;-><init>(Lo/H1;)V

    .line 8
    return-object v1
.end method
