.class public final Lo/N9;
.super Lo/T6;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    const-string p2, "activity"

    .line 3
    invoke-static {p1, p2}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget p2, Lo/Rd;->b:I

    .line 8
    invoke-static {p1}, Lo/Pd;->b(Landroid/app/Activity;)V

    .line 11
    return-void
.end method
