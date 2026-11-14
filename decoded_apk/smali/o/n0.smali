.class public final Lo/n0;
.super Lo/x9;
.source "SourceFile"


# instance fields
.field public final synthetic U:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lo/n0;->U:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final K(ILandroid/content/Intent;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lo/n0;->U:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    new-instance v0, Lo/m0;

    .line 8
    invoke-direct {v0, p1, p2}, Lo/m0;-><init>(ILandroid/content/Intent;)V

    .line 11
    return-object v0

    .line 12
    :pswitch_0
    new-instance v0, Lo/m0;

    .line 14
    invoke-direct {v0, p1, p2}, Lo/m0;-><init>(ILandroid/content/Intent;)V

    .line 17
    return-object v0

    .line 18
    :pswitch_1
    sget-object v0, Lo/W6;->a:Lo/W6;

    .line 20
    const/4 v1, -0x1

    .line 21
    if-eq p1, v1, :cond_0

    .line 23
    goto/16 :goto_4

    .line 25
    :cond_0
    if-nez p2, :cond_1

    .line 27
    goto/16 :goto_4

    .line 29
    :cond_1
    const-string p1, "androidx.activity.result.contract.extra.PERMISSIONS"

    .line 31
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    const-string v1, "androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS"

    .line 37
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    .line 40
    move-result-object p2

    .line 41
    if-eqz p2, :cond_8

    .line 43
    if-nez p1, :cond_2

    .line 45
    goto :goto_4

    .line 46
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 48
    array-length v1, p2

    .line 49
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 52
    array-length v1, p2

    .line 53
    const/4 v2, 0x0

    .line 54
    move v3, v2

    .line 55
    :goto_0
    if-ge v3, v1, :cond_4

    .line 57
    aget v4, p2, v3

    .line 59
    if-nez v4, :cond_3

    .line 61
    const/4 v4, 0x1

    .line 62
    goto :goto_1

    .line 63
    :cond_3
    move v4, v2

    .line 64
    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    add-int/lit8 v3, v3, 0x1

    .line 73
    goto :goto_0

    .line 74
    :cond_4
    new-instance p2, Ljava/util/ArrayList;

    .line 76
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 79
    array-length v1, p1

    .line 80
    :goto_2
    if-ge v2, v1, :cond_6

    .line 82
    aget-object v3, p1, v2

    .line 84
    if-eqz v3, :cond_5

    .line 86
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 91
    goto :goto_2

    .line 92
    :cond_6
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 99
    move-result-object v1

    .line 100
    new-instance v2, Ljava/util/ArrayList;

    .line 102
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 105
    move-result p2

    .line 106
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 109
    move-result v0

    .line 110
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    .line 113
    move-result p2

    .line 114
    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 117
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    move-result p2

    .line 121
    if-eqz p2, :cond_7

    .line 123
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    move-result p2

    .line 127
    if-eqz p2, :cond_7

    .line 129
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    move-result-object p2

    .line 133
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 136
    move-result-object v0

    .line 137
    new-instance v3, Lo/Cc;

    .line 139
    invoke-direct {v3, p2, v0}, Lo/Cc;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 142
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    goto :goto_3

    .line 146
    :cond_7
    invoke-static {v2}, Lo/Ia;->E0(Ljava/util/ArrayList;)Ljava/util/Map;

    .line 149
    move-result-object v0

    .line 150
    :cond_8
    :goto_4
    return-object v0

    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
