.class public Lcom/hda/jds/DebugActivity;
.super Landroid/app/Activity;
.source "DebugActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hda/jds/DebugActivity$100000000;
    }
.end annotation


# instance fields
.field errMessage:[Ljava/lang/String;

.field exceptionType:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    .line 57
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

    iput-object v3, v2, Lcom/hda/jds/DebugActivity;->exceptionType:[Ljava/lang/String;

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

    iput-object v3, v2, Lcom/hda/jds/DebugActivity;->errMessage:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 16
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
    .line 27
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v10, v0

    move-object v11, v1

    invoke-super {v10, v11}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    move-object v10, v0

    invoke-virtual {v10}, Lcom/hda/jds/DebugActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    move-object v3, v10

    .line 29
    const-string v10, ""

    move-object v4, v10

    .line 30
    const-string v10, ""

    move-object v5, v10

    .line 31
    move-object v10, v3

    if-eqz v10, :cond_0

    .line 32
    move-object v10, v3

    const-string v11, "error"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v4, v10

    .line 33
    move-object v10, v4

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    move-object v6, v10

    .line 36
    const/4 v10, 0x0

    move v7, v10

    :goto_0
    move v10, v7

    move-object v11, v0

    :try_start_0
    iget-object v11, v11, Lcom/hda/jds/DebugActivity;->exceptionType:[Ljava/lang/String;

    array-length v11, v11

    if-lt v10, v11, :cond_1

    .line 44
    :goto_1
    move-object v10, v5

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eqz v10, :cond_0

    move-object v10, v4

    move-object v5, v10

    .line 47
    :cond_0
    :goto_2
    new-instance v10, Landroid/app/AlertDialog$Builder;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v0

    invoke-direct {v11, v12}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v6, v10

    .line 48
    move-object v10, v6

    const-string v11, "An error occured"

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 49
    move-object v10, v6

    move-object v11, v5

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 50
    move-object v10, v6

    const-string v11, "End Application"

    new-instance v12, Lcom/hda/jds/DebugActivity$100000000;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    move-object v14, v0

    invoke-direct {v13, v14}, Lcom/hda/jds/DebugActivity$100000000;-><init>(Lcom/hda/jds/DebugActivity;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 56
    move-object v10, v6

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V

    return-void

    .line 37
    :cond_1
    move-object v10, v6

    const/4 v11, 0x0

    :try_start_1
    aget-object v10, v10, v11

    move-object v11, v0

    iget-object v11, v11, Lcom/hda/jds/DebugActivity;->exceptionType:[Ljava/lang/String;

    move v12, v7

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 38
    move-object v10, v0

    iget-object v10, v10, Lcom/hda/jds/DebugActivity;->errMessage:[Ljava/lang/String;

    move v11, v7

    aget-object v10, v10, v11

    move-object v5, v10

    .line 39
    move-object v10, v6

    const/4 v11, 0x0

    aget-object v10, v10, v11

    move-object v11, v0

    iget-object v11, v11, Lcom/hda/jds/DebugActivity;->exceptionType:[Ljava/lang/String;

    move v12, v7

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    move-object v11, v0

    iget-object v11, v11, Lcom/hda/jds/DebugActivity;->exceptionType:[Ljava/lang/String;

    move v12, v7

    aget-object v11, v11, v12

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    move v8, v10

    .line 40
    new-instance v10, Ljava/lang/StringBuffer;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    move-object v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    move-object v11, v6

    const/4 v12, 0x0

    aget-object v11, v11, v12

    move v12, v8

    move-object v13, v6

    const/4 v14, 0x0

    aget-object v13, v13, v14

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    move-object v5, v10

    .line 41
    goto/16 :goto_1

    .line 36
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 44
    :catch_0
    move-exception v10

    move-object v7, v10

    goto/16 :goto_2
.end method
