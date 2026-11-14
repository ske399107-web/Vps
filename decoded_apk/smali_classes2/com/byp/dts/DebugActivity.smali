.class public Lcom/byp/dts/DebugActivity;
.super Landroid/app/Activity;
.source "DebugActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byp/dts/DebugActivity$100000000;
    }
.end annotation


# instance fields
.field errMessage:[Ljava/lang/String;

.field exceptionType:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    .line 70
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/app/Activity;-><init>()V

    move-object v2, v0

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string v6, "StringIndexOutOfBoundsException"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string v6, "IndexOutOfBoundsException"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    const-string v6, "ArithmeticException"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x3

    const-string v6, "NumberFormatException"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x4

    const-string v6, "ActivityNotFoundException"

    aput-object v6, v4, v5

    iput-object v3, v2, Lcom/byp/dts/DebugActivity;->exceptionType:[Ljava/lang/String;

    move-object v2, v0

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string v6, "Invalid string operation\n"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    const-string v6, "Invalid list operation\n"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    const-string v6, "Invalid arithmetical operation\n"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x3

    const-string v6, "Invalid toNumber block operation\n"

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x4

    const-string v6, "Invalid intent operation"

    aput-object v6, v4, v5

    iput-object v3, v2, Lcom/byp/dts/DebugActivity;->errMessage:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v11, v0

    const-string v12, "com.goxome.aidestudio"

    invoke-static {v11, v12}, Ladrt/ADRTLogCatReader;->onContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 27
    move-object v11, v0

    move-object v12, v1

    invoke-super {v11, v12}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    move-object v11, v0

    invoke-virtual {v11}, Lcom/byp/dts/DebugActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    move-object v3, v11

    .line 30
    const-string v11, ""

    move-object v4, v11

    .line 31
    const-string v11, "Unknown error occurred."

    move-object v5, v11

    .line 33
    move-object v11, v3

    if-eqz v11, :cond_1

    .line 34
    move-object v11, v3

    const-string v12, "error"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v4, v11

    .line 35
    move-object v11, v4

    if-eqz v11, :cond_0

    move-object v11, v4

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 36
    :cond_0
    const-string v11, "No error message provided."

    move-object v4, v11

    .line 58
    :cond_1
    :goto_0
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v0

    invoke-direct {v12, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v6, v11

    .line 59
    move-object v11, v6

    const-string v12, "An error occurred"

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    .line 60
    move-object v11, v6

    move-object v12, v5

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    .line 61
    move-object v11, v6

    const-string v12, "End Application"

    new-instance v13, Lcom/byp/dts/DebugActivity$100000000;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    move-object v15, v0

    invoke-direct {v14, v15}, Lcom/byp/dts/DebugActivity$100000000;-><init>(Lcom/byp/dts/DebugActivity;)V

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    .line 68
    move-object v11, v6

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    .line 69
    move-object v11, v6

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/AlertDialog;->show()V

    return-void

    .line 38
    :cond_2
    move-object v11, v4

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    move-object v6, v11

    .line 39
    move-object v11, v6

    array-length v11, v11

    const/4 v12, 0x0

    if-le v11, v12, :cond_1

    .line 40
    move-object v11, v6

    const/4 v12, 0x0

    aget-object v11, v11, v12

    move-object v7, v11

    .line 41
    const/4 v11, 0x0

    move v8, v11

    :goto_1
    move v11, v8

    move-object v12, v0

    iget-object v12, v12, Lcom/byp/dts/DebugActivity;->exceptionType:[Ljava/lang/String;

    array-length v12, v12

    if-lt v11, v12, :cond_3

    .line 51
    :goto_2
    move-object v11, v5

    const-string v12, "Unknown error occurred."

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 52
    move-object v11, v7

    move-object v5, v11

    goto :goto_0

    .line 42
    :cond_3
    move-object v11, v7

    move-object v12, v0

    iget-object v12, v12, Lcom/byp/dts/DebugActivity;->exceptionType:[Ljava/lang/String;

    move v13, v8

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 43
    move-object v11, v0

    iget-object v11, v11, Lcom/byp/dts/DebugActivity;->errMessage:[Ljava/lang/String;

    move v12, v8

    aget-object v11, v11, v12

    move-object v5, v11

    .line 44
    move-object v11, v7

    move-object v12, v0

    iget-object v12, v12, Lcom/byp/dts/DebugActivity;->exceptionType:[Ljava/lang/String;

    move v13, v8

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    move-object v12, v0

    iget-object v12, v12, Lcom/byp/dts/DebugActivity;->exceptionType:[Ljava/lang/String;

    move v13, v8

    aget-object v12, v12, v13

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    move v9, v11

    .line 45
    move v11, v9

    move-object v12, v7

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v11, v12, :cond_4

    .line 46
    new-instance v11, Ljava/lang/StringBuffer;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    move-object v12, v5

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    move-object v12, v7

    move v13, v9

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v5, v11

    .line 48
    :cond_4
    goto :goto_2

    .line 41
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method
