.class public Lcom/byp/dts/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byp/dts/MainActivity$100000000;,
        Lcom/byp/dts/MainActivity$100000001;,
        Lcom/byp/dts/MainActivity$100000002;,
        Lcom/byp/dts/MainActivity$100000003;,
        Lcom/byp/dts/MainActivity$100000004;,
        Lcom/byp/dts/MainActivity$100000009;,
        Lcom/byp/dts/MainActivity$100000010;,
        Lcom/byp/dts/MainActivity$100000011;
    }
.end annotation


# static fields
.field private static final API_KEY:Ljava/lang/String; = "X7B4N2P8Q9W3Z6M5"

.field private static final GAME_NAME:Ljava/lang/String;

.field private static final SERVER_URL:Ljava/lang/String;

.field private static final TARGET_GAME:Ljava/lang/String; = "com.dts.freefiremax"

.field private static instance:Lcom/byp/dts/MainActivity;


# instance fields
.field private final GAME_ACTIVITY:Ljava/lang/String;

.field private floatingExitButton:Landroid/view/View;

.field private hasLaunched:Z

.field private isExitButtonRemoved:Z

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method static final constructor <clinit>()V
    .locals 3

    const-string v2, "aHR0cHM6Ly92aWt1LnVybGtpbmcuaW4vY29ubmVjdC9nZXRrZXltMW54"

    invoke-static {v2}, Lcom/byp/dts/MainActivity;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/byp/dts/MainActivity;->SERVER_URL:Ljava/lang/String;

    const-string v2, "UFVCRw=="

    invoke-static {v2}, Lcom/byp/dts/MainActivity;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/byp/dts/MainActivity;->GAME_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 599
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/app/Activity;-><init>()V

    move-object v2, v0

    const-string v3, "Y29tLmR0cy5mcmVlZmlyZXRoaC5GRk1haW5BY3Rpdml0eQ=="

    invoke-static {v3}, Lcom/byp/dts/MainActivity;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/byp/dts/MainActivity;->GAME_ACTIVITY:Ljava/lang/String;

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/byp/dts/MainActivity;->hasLaunched:Z

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/byp/dts/MainActivity;->isExitButtonRemoved:Z

    return-void
.end method

.method public static MD5_Hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    .prologue
    .line 564
    move-object v0, p0

    :try_start_0
    const-string v10, "MD5"

    invoke-static {v10}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v10

    move-object v2, v10

    .line 565
    move-object v10, v2

    move-object v11, v0

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/security/MessageDigest;->update([B)V

    .line 566
    move-object v10, v2

    invoke-virtual {v10}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v10

    move-object v3, v10

    .line 567
    new-instance v10, Ljava/lang/StringBuilder;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v10

    .line 568
    move-object v10, v3

    move-object v5, v10

    const/4 v10, 0x0

    move v6, v10

    .line 571
    :goto_0
    move v10, v6

    move-object v11, v5

    array-length v11, v11

    if-lt v10, v11, :cond_0

    .line 573
    move-object v10, v4

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v0, v10

    .line 575
    :goto_1
    return-object v0

    .line 568
    :cond_0
    move-object v10, v5

    move v11, v6

    aget-byte v10, v10, v11

    move v7, v10

    .line 569
    const/16 v10, 0xff

    move v11, v7

    and-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    .line 570
    move-object v10, v8

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    move-object v10, v4

    const/16 v11, 0x30

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 571
    :cond_1
    move-object v10, v4

    move-object v11, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 573
    :catch_0
    move-exception v10

    move-object v2, v10

    .line 575
    const-string v10, ""

    move-object v0, v10

    goto :goto_1
.end method

.method public static Start(Landroid/content/Context;)V
    .locals 44
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 83
    move-object/from16 v2, p0

    sget v32, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v33, 0x17

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_0

    move-object/from16 v32, v2

    invoke-static/range {v32 .. v32}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v32

    if-nez v32, :cond_0

    .line 84
    move-object/from16 v32, v2

    const-string v33, "Overlay permission required!"

    const/16 v34, 0x1

    invoke-static/range {v32 .. v34}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/Toast;->show()V

    .line 85
    move-object/from16 v32, v2

    new-instance v33, Landroid/content/Intent;

    move-object/from16 v42, v33

    move-object/from16 v33, v42

    move-object/from16 v34, v42

    const-string v35, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    new-instance v36, Ljava/lang/StringBuffer;

    move-object/from16 v42, v36

    move-object/from16 v36, v42

    move-object/from16 v37, v42

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuffer;-><init>()V

    const-string v37, "package:"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v36

    move-object/from16 v37, v2

    invoke-virtual/range {v37 .. v37}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v36

    invoke-direct/range {v34 .. v36}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 87
    new-instance v32, Landroid/os/Handler;

    move-object/from16 v42, v32

    move-object/from16 v32, v42

    move-object/from16 v33, v42

    invoke-direct/range {v33 .. v33}, Landroid/os/Handler;-><init>()V

    new-instance v33, Lcom/byp/dts/MainActivity$100000000;

    move-object/from16 v42, v33

    move-object/from16 v33, v42

    move-object/from16 v34, v42

    invoke-direct/range {v34 .. v34}, Lcom/byp/dts/MainActivity$100000000;-><init>()V

    const/16 v34, 0x1388

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v34, v0

    invoke-virtual/range {v32 .. v35}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v32

    .line 293
    :goto_0
    return-void

    .line 96
    :cond_0
    new-instance v32, Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-object/from16 v42, v32

    move-object/from16 v32, v42

    move-object/from16 v33, v42

    invoke-direct/range {v33 .. v33}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual/range {v32 .. v32}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v32

    move-object/from16 v4, v32

    .line 97
    move-object/from16 v32, v4

    invoke-static/range {v32 .. v32}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 99
    move-object/from16 v32, v2

    const-string v33, "SavePref"

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v32

    move-object/from16 v5, v32

    .line 100
    move-object/from16 v32, v5

    const-string v33, "Key"

    const/16 v34, 0x0

    check-cast v34, Ljava/lang/String;

    invoke-interface/range {v32 .. v34}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v6, v32

    .line 101
    move-object/from16 v32, v5

    const-string v33, "RememberMe"

    const/16 v34, 0x0

    invoke-interface/range {v32 .. v34}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v32

    new-instance v33, Ljava/lang/Boolean;

    move/from16 v42, v32

    move-object/from16 v43, v33

    move-object/from16 v32, v43

    move/from16 v33, v42

    move-object/from16 v34, v43

    move/from16 v42, v33

    move-object/from16 v43, v34

    move-object/from16 v33, v43

    move/from16 v34, v42

    invoke-direct/range {v33 .. v34}, Ljava/lang/Boolean;-><init>(Z)V

    move-object/from16 v7, v32

    .line 103
    new-instance v32, Landroid/widget/LinearLayout;

    move-object/from16 v42, v32

    move-object/from16 v32, v42

    move-object/from16 v33, v42

    move-object/from16 v34, v2

    invoke-direct/range {v33 .. v34}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v8, v32

    .line 104
    move-object/from16 v32, v8

    new-instance v33, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v42, v33

    move-object/from16 v33, v42

    move-object/from16 v34, v42

    const/16 v35, -0x1

    const/16 v36, -0x1

    invoke-direct/range {v34 .. v36}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    move-object/from16 v32, v8

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 106
    move-object/from16 v32, v8

    const-string v33, "#101010"

    invoke-static/range {v33 .. v33}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 107
    move-object/from16 v32, v8

    const/16 v33, 0x8

    const/16 v34, 0xa

    const/16 v35, 0x8

    const/16 v36, 0xa

    invoke-virtual/range {v32 .. v36}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 108
    move-object/from16 v32, v8

    const/16 v33, 0x11

    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 110
    new-instance v32, Landroid/widget/TextView;

    move-object/from16 v42, v32

    move-object/from16 v32, v42

    move-object/from16 v33, v42

    move-object/from16 v34, v2

    invoke-direct/range {v33 .. v34}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v9, v32

    .line 111
    move-object/from16 v32, v9

    const-string v33, "LOGIN"

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    move-object/from16 v32, v9

    const-string v33, "#ffd700"

    invoke-static/range {v33 .. v33}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    move-object/from16 v32, v9

    const/16 v33, 0xf

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setTextSize(F)V

    .line 114
    move-object/from16 v32, v9

    const/16 v33, 0x0

    check-cast v33, Landroid/graphics/Typeface;

    const/16 v34, 0x1

    invoke-virtual/range {v32 .. v34}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 115
    move-object/from16 v32, v9

    const/16 v33, 0x11

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setGravity(I)V

    .line 116
    move-object/from16 v32, v9

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x4

    invoke-virtual/range {v32 .. v36}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 118
    new-instance v32, Landroid/widget/TextView;

    move-object/from16 v42, v32

    move-object/from16 v32, v42

    move-object/from16 v33, v42

    move-object/from16 v34, v2

    invoke-direct/range {v33 .. v34}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v10, v32

    .line 119
    move-object/from16 v32, v10

    const-string v33, "Login Key Required"

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    move-object/from16 v32, v10

    const-string v33, "#bbbbbb"

    invoke-static/range {v33 .. v33}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    move-object/from16 v32, v10

    const/16 v33, 0xb

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setTextSize(F)V

    .line 122
    move-object/from16 v32, v10

    const/16 v33, 0x11

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setGravity(I)V

    .line 123
    move-object/from16 v32, v10

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x8

    invoke-virtual/range {v32 .. v36}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 125
    new-instance v32, Landroid/widget/LinearLayout;

    move-object/from16 v42, v32

    move-object/from16 v32, v42

    move-object/from16 v33, v42

    move-object/from16 v34, v2

    invoke-direct/range {v33 .. v34}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v11, v32

    .line 126
    move-object/from16 v32, v11

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 127
    move-object/from16 v32, v11

    const/16 v33, 0x8

    const/16 v34, 0x8

    const/16 v35, 0x8

    const/16 v36, 0x8

    invoke-virtual/range {v32 .. v36}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 128
    new-instance v32, Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v42, v32

    move-object/from16 v32, v42

    move-object/from16 v33, v42

    invoke-direct/range {v33 .. v33}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    move-object/from16 v12, v32

    .line 129
    move-object/from16 v32, v12

    const-string v33, "#1f1f1f"

    invoke-static/range {v33 .. v33}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 130
    move-object/from16 v32, v12

    const/high16 v33, 0x41a00000    # 20.0f

    invoke-virtual/range {v32 .. v33}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 131
    move-object/from16 v32, v12

    const/16 v33, 0x4

    const-string v34, "#ffd700"

    invoke-static/range {v34 .. v34}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v34

    invoke-virtual/range {v32 .. v34}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 132
    move-object/from16 v32, v11

    move-object/from16 v33, v12

    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 134
    new-instance v32, Landroid/widget/TextView;

    move-object/from16 v42, v32

    move-object/from16 v32, v42

    move-object/from16 v33, v42

    move-object/from16 v34, v2

    invoke-direct/range {v33 .. v34}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v13, v32

    .line 135
    move-object/from16 v32, v13

    const-string v33, "KEY"

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    move-object/from16 v32, v13

    const-string v33, "#ffd700"

    invoke-static/range {v33 .. v33}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setTextColor(I)V

    .line 137
    move-object/from16 v32, v13

    const/16 v33, 0xc

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setTextSize(F)V

    .line 138
    move-object/from16 v32, v13

    const/16 v33, 0x0

    check-cast v33, Landroid/graphics/Typeface;

    const/16 v34, 0x1

    invoke-virtual/range {v32 .. v34}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 139
    move-object/from16 v32, v13

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x4

    invoke-virtual/range {v32 .. v36}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 141
    new-instance v32, Landroid/widget/EditText;

    move-object/from16 v42, v32

    move-object/from16 v32, v42

    move-object/from16 v33, v42

    move-object/from16 v34, v2

    invoke-direct/range {v33 .. v34}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v14, v32

    .line 142
    move-object/from16 v32, v6

    if-eqz v32, :cond_1

    move-object/from16 v32, v6

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->isEmpty()Z

    move-result v32

    if-nez v32, :cond_1

    move-object/from16 v32, v14

    move-object/from16 v33, v6

    invoke-virtual/range {v32 .. v33}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 143
    :cond_1
    move-object/from16 v32, v14

    const-string v33, "Enter license key"

    invoke-virtual/range {v32 .. v33}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 144
    move-object/from16 v32, v14

    const-string v33, "#777777"

    invoke-static/range {v33 .. v33}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 145
    move-object/from16 v32, v14

    const/16 v33, -0x1

    invoke-virtual/range {v32 .. v33}, Landroid/widget/EditText;->setTextColor(I)V

    .line 146
    move-object/from16 v32, v14

    const/16 v33, 0xc

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/EditText;->setTextSize(F)V

    .line 147
    move-object/from16 v32, v14

    const/16 v33, 0xa

    const/16 v34, 0x8

    const/16 v35, 0xa

    const/16 v36, 0x8

    invoke-virtual/range {v32 .. v36}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 148
    new-instance v32, Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v42, v32

    move-object/from16 v32, v42

    move-object/from16 v33, v42

    invoke-direct/range {v33 .. v33}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    move-object/from16 v15, v32

    .line 149
    move-object/from16 v32, v15

    const-string v33, "#2c2c2c"

    invoke-static/range {v33 .. v33}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 150
    move-object/from16 v32, v15

    const/high16 v33, 0x41800000    # 16.0f

    invoke-virtual/range {v32 .. v33}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 151
    move-object/from16 v32, v15

    const/16 v33, 0x2

    const-string v34, "#555555"

    invoke-static/range {v34 .. v34}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v34

    invoke-virtual/range {v32 .. v34}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 152
    move-object/from16 v32, v14

    move-object/from16 v33, v15

    invoke-virtual/range {v32 .. v33}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 153
    new-instance v32, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v42, v32

    move-object/from16 v32, v42

    move-object/from16 v33, v42

    const/16 v34, -0x1

    const/16 v35, -0x2

    invoke-direct/range {v33 .. v35}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v16, v32

    .line 154
    move-object/from16 v32, v16

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x4

    invoke-virtual/range {v32 .. v36}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 155
    move-object/from16 v32, v14

    move-object/from16 v33, v16

    invoke-virtual/range {v32 .. v33}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    new-instance v32, Landroid/widget/CheckBox;

    move-object/from16 v42, v32

    move-object/from16 v32, v42

    move-object/from16 v33, v42

    move-object/from16 v34, v2

    invoke-direct/range {v33 .. v34}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    move-object/from16 v17, v32

    .line 158
    move-object/from16 v32, v17

    const/16 v33, 0x0

    const/16 v34, 0x2

    const/16 v35, 0x0

    const/16 v36, 0x6

    invoke-virtual/range {v32 .. v36}, Landroid/widget/CheckBox;->setPadding(IIII)V

    .line 159
    move-object/from16 v32, v17

    const/16 v33, 0xb

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/CheckBox;->setTextSize(F)V

    .line 160
    move-object/from16 v32, v17

    move-object/from16 v33, v7

    check-cast v33, Ljava/lang/Boolean;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v33

    invoke-virtual/range {v32 .. v33}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 161
    move-object/from16 v32, v17

    const-string v33, "#00ff88"

    invoke-static/range {v33 .. v33}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 162
    move-object/from16 v32, v17

    const-string v33, "Remember key"

    invoke-virtual/range {v32 .. v33}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 163
    sget v32, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v33, 0x15

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_2

    .line 164
    move-object/from16 v32, v17

    const-string v33, "#00ff88"

    invoke-static/range {v33 .. v33}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v33

    invoke-static/range {v33 .. v33}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 167
    :cond_2
    new-instance v32, Landroid/widget/LinearLayout;

    move-object/from16 v42, v32

    move-object/from16 v32, v42

    move-object/from16 v33, v42

    move-object/from16 v34, v2

    invoke-direct/range {v33 .. v34}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v18, v32

    .line 168
    move-object/from16 v32, v18

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 169
    move-object/from16 v32, v18

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x4

    invoke-virtual/range {v32 .. v36}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 171
    new-instance v32, Landroid/widget/Button;

    move-object/from16 v42, v32

    move-object/from16 v32, v42

    move-object/from16 v33, v42

    move-object/from16 v34, v2

    invoke-direct/range {v33 .. v34}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v19, v32

    .line 172
    move-object/from16 v32, v19

    const-string v33, "#1b1b1b"

    const-string v34, "#ffd700"

    invoke-static/range {v33 .. v34}, Lcom/byp/dts/MainActivity;->pill(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 173
    move-object/from16 v32, v19

    const-string v33, "PASTE"

    invoke-static/range {v32 .. v33}, Lcom/byp/dts/MainActivity;->stylize(Landroid/widget/Button;Ljava/lang/String;)V

    .line 175
    new-instance v32, Landroid/widget/Button;

    move-object/from16 v42, v32

    move-object/from16 v32, v42

    move-object/from16 v33, v42

    move-object/from16 v34, v2

    invoke-direct/range {v33 .. v34}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v20, v32

    .line 176
    move-object/from16 v32, v20

    const-string v33, "#1b1b1b"

    const-string v34, "#ffd700"

    invoke-static/range {v33 .. v34}, Lcom/byp/dts/MainActivity;->pill(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 177
    move-object/from16 v32, v20

    const-string v33, "LOGIN"

    invoke-static/range {v32 .. v33}, Lcom/byp/dts/MainActivity;->stylize(Landroid/widget/Button;Ljava/lang/String;)V

    .line 179
    new-instance v32, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v42, v32

    move-object/from16 v32, v42

    move-object/from16 v33, v42

    const/16 v34, 0x0

    const/16 v35, -0x2

    const/16 v36, 0x1

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    invoke-direct/range {v33 .. v36}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v21, v32

    .line 180
    move-object/from16 v32, v21

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x2

    const/16 v36, 0x0

    invoke-virtual/range {v32 .. v36}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 181
    move-object/from16 v32, v18

    move-object/from16 v33, v19

    move-object/from16 v34, v21

    invoke-virtual/range {v32 .. v34}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    new-instance v32, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v42, v32

    move-object/from16 v32, v42

    move-object/from16 v33, v42

    const/16 v34, 0x0

    const/16 v35, -0x2

    const/16 v36, 0x1

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    invoke-direct/range {v33 .. v36}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v21, v32

    .line 183
    move-object/from16 v32, v21

    const/16 v33, 0x2

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    invoke-virtual/range {v32 .. v36}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 184
    move-object/from16 v32, v18

    move-object/from16 v33, v20

    move-object/from16 v34, v21

    invoke-virtual/range {v32 .. v34}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    new-instance v32, Landroid/widget/LinearLayout;

    move-object/from16 v42, v32

    move-object/from16 v32, v42

    move-object/from16 v33, v42

    move-object/from16 v34, v2

    invoke-direct/range {v33 .. v34}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v22, v32

    .line 187
    move-object/from16 v32, v22

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 188
    move-object/from16 v32, v22

    const/16 v33, 0x0

    const/16 v34, 0x4

    const/16 v35, 0x0

    const/16 v36, 0x4

    invoke-virtual/range {v32 .. v36}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 190
    new-instance v32, Landroid/widget/Button;

    move-object/from16 v42, v32

    move-object/from16 v32, v42

    move-object/from16 v33, v42

    move-object/from16 v34, v2

    invoke-direct/range {v33 .. v34}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v23, v32

    .line 191
    move-object/from16 v32, v23

    const-string v33, "#1b1b1b"

    const-string v34, "#ffd700"

    invoke-static/range {v33 .. v34}, Lcom/byp/dts/MainActivity;->pill(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 192
    move-object/from16 v32, v23

    const-string v33, "GET KEY"

    invoke-static/range {v32 .. v33}, Lcom/byp/dts/MainActivity;->stylize(Landroid/widget/Button;Ljava/lang/String;)V

    .line 194
    new-instance v32, Landroid/widget/Button;

    move-object/from16 v42, v32

    move-object/from16 v32, v42

    move-object/from16 v33, v42

    move-object/from16 v34, v2

    invoke-direct/range {v33 .. v34}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v24, v32

    .line 195
    move-object/from16 v32, v24

    const-string v33, "#1b1b1b"

    const-string v34, "#ffd700"

    invoke-static/range {v33 .. v34}, Lcom/byp/dts/MainActivity;->pill(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 196
    move-object/from16 v32, v24

    const-string v33, "TELEGRAM"

    invoke-static/range {v32 .. v33}, Lcom/byp/dts/MainActivity;->stylize(Landroid/widget/Button;Ljava/lang/String;)V

    .line 198
    new-instance v32, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v42, v32

    move-object/from16 v32, v42

    move-object/from16 v33, v42

    const/16 v34, 0x0

    const/16 v35, -0x2

    const/16 v36, 0x1

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    invoke-direct/range {v33 .. v36}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v25, v32

    .line 199
    move-object/from16 v32, v25

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x2

    const/16 v36, 0x0

    invoke-virtual/range {v32 .. v36}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 200
    move-object/from16 v32, v22

    move-object/from16 v33, v23

    move-object/from16 v34, v25

    invoke-virtual/range {v32 .. v34}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    new-instance v32, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v42, v32

    move-object/from16 v32, v42

    move-object/from16 v33, v42

    const/16 v34, 0x0

    const/16 v35, -0x2

    const/16 v36, 0x1

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    invoke-direct/range {v33 .. v36}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v25, v32

    .line 202
    move-object/from16 v32, v25

    const/16 v33, 0x2

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    invoke-virtual/range {v32 .. v36}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 203
    move-object/from16 v32, v22

    move-object/from16 v33, v24

    move-object/from16 v34, v25

    invoke-virtual/range {v32 .. v34}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    new-instance v32, Landroid/widget/TextView;

    move-object/from16 v42, v32

    move-object/from16 v32, v42

    move-object/from16 v33, v42

    move-object/from16 v34, v2

    invoke-direct/range {v33 .. v34}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v26, v32

    .line 206
    move-object/from16 v32, v26

    const-string v33, "Enter your license key"

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    move-object/from16 v32, v26

    const-string v33, "#00ff88"

    invoke-static/range {v33 .. v33}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setTextColor(I)V

    .line 208
    move-object/from16 v32, v26

    const/16 v33, 0xb

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setTextSize(F)V

    .line 209
    move-object/from16 v32, v26

    const/16 v33, 0x11

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setGravity(I)V

    .line 210
    move-object/from16 v32, v26

    const/16 v33, 0x0

    const/16 v34, 0x6

    const/16 v35, 0x0

    const/16 v36, 0x0

    invoke-virtual/range {v32 .. v36}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 211
    move-object/from16 v32, v26

    const/16 v33, 0x0

    check-cast v33, Landroid/graphics/Typeface;

    const/16 v34, 0x1

    invoke-virtual/range {v32 .. v34}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 213
    move-object/from16 v32, v11

    move-object/from16 v33, v13

    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 214
    move-object/from16 v32, v11

    move-object/from16 v33, v14

    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 215
    move-object/from16 v32, v11

    move-object/from16 v33, v17

    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 216
    move-object/from16 v32, v11

    move-object/from16 v33, v18

    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 217
    move-object/from16 v32, v11

    move-object/from16 v33, v22

    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 218
    move-object/from16 v32, v11

    move-object/from16 v33, v26

    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 220
    move-object/from16 v32, v8

    move-object/from16 v33, v9

    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 221
    move-object/from16 v32, v8

    move-object/from16 v33, v10

    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 222
    move-object/from16 v32, v8

    move-object/from16 v33, v11

    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 224
    new-instance v32, Landroid/widget/TextView;

    move-object/from16 v42, v32

    move-object/from16 v32, v42

    move-object/from16 v33, v42

    move-object/from16 v34, v2

    invoke-direct/range {v33 .. v34}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v27, v32

    .line 225
    move-object/from16 v32, v27

    const-string v33, "MODDER GANG  2025"

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    move-object/from16 v32, v27

    const-string v33, "#666666"

    invoke-static/range {v33 .. v33}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setTextColor(I)V

    .line 227
    move-object/from16 v32, v27

    const/16 v33, 0x9

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setTextSize(F)V

    .line 228
    move-object/from16 v32, v27

    const/16 v33, 0x11

    invoke-virtual/range {v32 .. v33}, Landroid/widget/TextView;->setGravity(I)V

    .line 229
    move-object/from16 v32, v27

    const/16 v33, 0x0

    const/16 v34, 0x8

    const/16 v35, 0x0

    const/16 v36, 0x0

    invoke-virtual/range {v32 .. v36}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 230
    move-object/from16 v32, v8

    move-object/from16 v33, v27

    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 232
    new-instance v32, Landroid/app/AlertDialog$Builder;

    move-object/from16 v42, v32

    move-object/from16 v32, v42

    move-object/from16 v33, v42

    move-object/from16 v34, v2

    invoke-direct/range {v33 .. v34}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v28, v32

    .line 233
    move-object/from16 v32, v28

    move-object/from16 v33, v8

    invoke-virtual/range {v32 .. v33}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v32

    .line 234
    move-object/from16 v32, v28

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v32

    .line 235
    move-object/from16 v32, v28

    invoke-virtual/range {v32 .. v32}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v32

    move-object/from16 v29, v32

    .line 238
    new-instance v32, Lcom/byp/dts/MainActivity$100000001;

    move-object/from16 v42, v32

    move-object/from16 v32, v42

    move-object/from16 v33, v42

    invoke-direct/range {v33 .. v33}, Lcom/byp/dts/MainActivity$100000001;-><init>()V

    move-object/from16 v30, v32

    .line 249
    move-object/from16 v32, v19

    move-object/from16 v33, v30

    invoke-virtual/range {v32 .. v33}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 250
    move-object/from16 v32, v20

    move-object/from16 v33, v30

    invoke-virtual/range {v32 .. v33}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 251
    move-object/from16 v32, v23

    move-object/from16 v33, v30

    invoke-virtual/range {v32 .. v33}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 252
    move-object/from16 v32, v24

    move-object/from16 v33, v30

    invoke-virtual/range {v32 .. v33}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 255
    move-object/from16 v32, v19

    new-instance v33, Lcom/byp/dts/MainActivity$100000002;

    move-object/from16 v42, v33

    move-object/from16 v33, v42

    move-object/from16 v34, v42

    move-object/from16 v35, v2

    move-object/from16 v36, v14

    move-object/from16 v37, v26

    invoke-direct/range {v34 .. v37}, Lcom/byp/dts/MainActivity$100000002;-><init>(Landroid/content/Context;Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual/range {v32 .. v33}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    move-object/from16 v32, v23

    new-instance v33, Lcom/byp/dts/MainActivity$100000003;

    move-object/from16 v42, v33

    move-object/from16 v33, v42

    move-object/from16 v34, v42

    move-object/from16 v35, v2

    invoke-direct/range {v34 .. v35}, Lcom/byp/dts/MainActivity$100000003;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v32 .. v33}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    move-object/from16 v32, v24

    new-instance v33, Lcom/byp/dts/MainActivity$100000004;

    move-object/from16 v42, v33

    move-object/from16 v33, v42

    move-object/from16 v34, v42

    move-object/from16 v35, v2

    invoke-direct/range {v34 .. v35}, Lcom/byp/dts/MainActivity$100000004;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v32 .. v33}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    move-object/from16 v32, v20

    new-instance v33, Lcom/byp/dts/MainActivity$100000009;

    move-object/from16 v42, v33

    move-object/from16 v33, v42

    move-object/from16 v34, v42

    move-object/from16 v35, v14

    move-object/from16 v36, v26

    move-object/from16 v37, v5

    move-object/from16 v38, v17

    move-object/from16 v39, v20

    move-object/from16 v40, v2

    move-object/from16 v41, v29

    invoke-direct/range {v34 .. v41}, Lcom/byp/dts/MainActivity$100000009;-><init>(Landroid/widget/EditText;Landroid/widget/TextView;Landroid/content/SharedPreferences;Landroid/widget/CheckBox;Landroid/widget/Button;Landroid/content/Context;Landroid/app/AlertDialog;)V

    invoke-virtual/range {v32 .. v33}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method static synthetic access$1000024(Landroid/content/Context;)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    invoke-static {v3}, Lcom/byp/dts/MainActivity;->startModMenu(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1000025(Lcom/byp/dts/MainActivity;Ljava/lang/String;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/byp/dts/MainActivity;->forceKillGame(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000026(Lcom/byp/dts/MainActivity;Ljava/lang/String;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/byp/dts/MainActivity;->openClearDataScreen(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000029(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    invoke-static {v3}, Lcom/byp/dts/MainActivity;->getDeviceSerial(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$L1000002()Ljava/lang/String;
    .locals 3

    sget-object v2, Lcom/byp/dts/MainActivity;->SERVER_URL:Ljava/lang/String;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$L1000003()Ljava/lang/String;
    .locals 3

    sget-object v2, Lcom/byp/dts/MainActivity;->GAME_NAME:Ljava/lang/String;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$L1000005()Ljava/lang/String;
    .locals 3

    sget-object v2, Lcom/byp/dts/MainActivity;->TARGET_GAME:Ljava/lang/String;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$L1000006(Lcom/byp/dts/MainActivity;)Landroid/view/WindowManager;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/byp/dts/MainActivity;->windowManager:Landroid/view/WindowManager;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$L1000007(Lcom/byp/dts/MainActivity;)Landroid/view/View;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/byp/dts/MainActivity;->floatingExitButton:Landroid/view/View;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$L1000008(Lcom/byp/dts/MainActivity;)Z
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-boolean v3, v3, Lcom/byp/dts/MainActivity;->isExitButtonRemoved:Z

    move v0, v3

    return v0
.end method

.method static synthetic access$L1000009()Lcom/byp/dts/MainActivity;
    .locals 3

    sget-object v2, Lcom/byp/dts/MainActivity;->instance:Lcom/byp/dts/MainActivity;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$S1000002(Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    sput-object v3, Lcom/byp/dts/MainActivity;->SERVER_URL:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$S1000003(Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    sput-object v3, Lcom/byp/dts/MainActivity;->GAME_NAME:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$S1000005(Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    sput-object v3, Lcom/byp/dts/MainActivity;->TARGET_GAME:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$S1000006(Lcom/byp/dts/MainActivity;Landroid/view/WindowManager;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/byp/dts/MainActivity;->windowManager:Landroid/view/WindowManager;

    return-void
.end method

.method static synthetic access$S1000007(Lcom/byp/dts/MainActivity;Landroid/view/View;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/byp/dts/MainActivity;->floatingExitButton:Landroid/view/View;

    return-void
.end method

.method static synthetic access$S1000008(Lcom/byp/dts/MainActivity;Z)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    iput-boolean v5, v4, Lcom/byp/dts/MainActivity;->isExitButtonRemoved:Z

    return-void
.end method

.method static synthetic access$S1000009(Lcom/byp/dts/MainActivity;)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    sput-object v3, Lcom/byp/dts/MainActivity;->instance:Lcom/byp/dts/MainActivity;

    return-void
.end method

.method private static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 57
    move-object v0, p0

    new-instance v3, Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    move-object v0, v3

    return-object v0
.end method

.method private forceKillGame(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 492
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    :try_start_0
    const-string v6, "activity"

    invoke-virtual {v5, v6}, Lcom/byp/dts/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    move-object v3, v5

    .line 493
    move-object v5, v3

    if-eqz v5, :cond_0

    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v5

    move-object v3, v5

    goto :goto_0
.end method

.method private static getDeviceSerial(Landroid/content/Context;)Ljava/lang/String;
    .locals 18

    .prologue
    .line 581
    move-object/from16 v0, p0

    move-object v14, v0

    :try_start_0
    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "android_id"

    invoke-static {v14, v15}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v2, v14

    .line 582
    sget-object v14, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object v3, v14

    .line 583
    sget-object v14, Landroid/os/Build;->BRAND:Ljava/lang/String;

    move-object v4, v14

    .line 584
    new-instance v14, Ljava/lang/StringBuffer;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v15, Ljava/lang/StringBuffer;

    move-object/from16 v17, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v17

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v16, v2

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    move-object/from16 v16, v3

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    move-object v15, v4

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v5, v14

    .line 586
    const-string v14, "MD5"

    invoke-static {v14}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v14

    move-object v6, v14

    .line 587
    move-object v14, v6

    move-object v15, v5

    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/security/MessageDigest;->update([B)V

    .line 588
    move-object v14, v6

    invoke-virtual {v14}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v14

    move-object v7, v14

    .line 589
    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v14

    .line 590
    move-object v14, v7

    move-object v9, v14

    const/4 v14, 0x0

    move v10, v14

    .line 593
    :goto_0
    move v14, v10

    move-object v15, v9

    array-length v15, v15

    if-lt v14, v15, :cond_0

    .line 595
    move-object v14, v8

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v0, v14

    .line 597
    :goto_1
    return-object v0

    .line 590
    :cond_0
    move-object v14, v9

    move v15, v10

    aget-byte v14, v14, v15

    move v11, v14

    .line 591
    const/16 v14, 0xff

    move v15, v11

    and-int/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    move-object v12, v14

    .line 592
    move-object v14, v12

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    move-object v14, v8

    const/16 v15, 0x30

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 593
    :cond_1
    move-object v14, v8

    move-object v15, v12

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 595
    :catch_0
    move-exception v14

    move-object v2, v14

    .line 597
    const-string v14, "default_device_serial_md5"

    move-object v0, v14

    goto :goto_1
.end method

.method private openClearDataScreen(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 499
    move-object v0, p0

    move-object v1, p1

    :try_start_0
    new-instance v5, Landroid/content/Intent;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 500
    move-object v5, v3

    new-instance v6, Ljava/lang/StringBuffer;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "package:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v5

    .line 501
    move-object v5, v3

    const/high16 v6, 0x10000000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v5

    .line 502
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Lcom/byp/dts/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v5

    move-object v3, v5

    goto :goto_0
.end method

.method private static pill(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/GradientDrawable;
    .locals 9

    .prologue
    .line 507
    move-object v0, p0

    move-object v1, p1

    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    move-object v3, v5

    .line 508
    move-object v5, v3

    const/high16 v6, 0x41f00000    # 30.0f

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 509
    move-object v5, v3

    move-object v6, v0

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 510
    move-object v5, v3

    const/4 v6, 0x2

    move-object v7, v1

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 511
    move-object v5, v3

    move-object v0, v5

    return-object v0
.end method

.method private startGameWatcherService()V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 468
    move-object v0, p0

    new-instance v5, Landroid/content/Intent;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v0

    :try_start_0
    const-string v8, "com.byp.dts.GameWatcherService"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v2, v5

    .line 469
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-lt v5, v6, :cond_0

    .line 470
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Lcom/byp/dts/MainActivity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v5

    .line 472
    :goto_0
    return-void

    .line 468
    :catch_0
    move-exception v5

    move-object v3, v5

    new-instance v5, Ljava/lang/NoClassDefFoundError;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v5

    .line 472
    :cond_0
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Lcom/byp/dts/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v5

    goto :goto_0
.end method

.method private static startModMenu(Landroid/content/Context;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 477
    move-object v0, p0

    new-instance v6, Landroid/content/Intent;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v0

    :try_start_0
    const-string v9, "com.byp.dts.ModMenuActivity"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v2, v6

    .line 478
    move-object v6, v2

    const/high16 v7, 0x10000000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v6

    .line 479
    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v6, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 481
    new-instance v6, Landroid/content/Intent;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    move-object v4, v6

    .line 482
    move-object v6, v4

    move-object v7, v0

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.srp.patch.Init"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 483
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    if-lt v6, v7, :cond_0

    .line 484
    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v6

    .line 486
    :goto_0
    return-void

    .line 477
    :catch_0
    move-exception v6

    move-object v3, v6

    new-instance v6, Ljava/lang/NoClassDefFoundError;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v3

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v6

    .line 486
    :cond_0
    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v6

    goto :goto_0
.end method

.method private static stylize(Landroid/widget/Button;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/Button;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 515
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 516
    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 517
    move-object v4, v0

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 518
    move-object v4, v0

    const/4 v5, 0x0

    check-cast v5, Landroid/graphics/Typeface;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 519
    move-object v4, v0

    const/high16 v5, 0x41400000    # 12.0f

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextSize(F)V

    .line 520
    move-object v4, v0

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/4 v7, 0x0

    const/16 v8, 0xa

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/Button;->setPadding(IIII)V

    .line 521
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_0

    .line 522
    move-object v4, v0

    const/4 v5, 0x0

    check-cast v5, Landroid/animation/StateListAnimator;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    :cond_0
    return-void
.end method

.method public static urlRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 39
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 527
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    const/16 v33, 0x0

    check-cast v33, Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v5, v33

    .line 528
    const/16 v33, 0x0

    check-cast v33, Ljava/io/BufferedReader;

    move-object/from16 v6, v33

    .line 530
    :try_start_0
    new-instance v33, Ljava/net/URL;

    move-object/from16 v38, v33

    move-object/from16 v33, v38

    move-object/from16 v34, v38

    move-object/from16 v35, v2

    invoke-direct/range {v34 .. v35}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object/from16 v11, v33

    .line 531
    move-object/from16 v33, v11

    invoke-virtual/range {v33 .. v33}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v33

    check-cast v33, Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v5, v33

    .line 532
    move-object/from16 v33, v5

    const/16 v34, 0x1

    invoke-virtual/range {v33 .. v34}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 533
    move-object/from16 v33, v5

    const-string v34, "POST"

    invoke-virtual/range {v33 .. v34}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 534
    move-object/from16 v33, v5

    const-string v34, "Content-Type"

    const-string v35, "application/x-www-form-urlencoded"

    invoke-virtual/range {v33 .. v35}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    move-object/from16 v33, v5

    const-string v34, "X-API-Key"

    const-string v35, "X7B4N2P8Q9W3Z6M5"

    invoke-virtual/range {v33 .. v35}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    move-object/from16 v33, v5

    const v34, 0xea60

    invoke-virtual/range {v33 .. v34}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 537
    move-object/from16 v33, v5

    const v34, 0xea60

    invoke-virtual/range {v33 .. v34}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 538
    move-object/from16 v33, v5

    move-object/from16 v34, v3

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->getBytes()[B

    move-result-object v34

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljavax/net/ssl/HttpsURLConnection;->setFixedLengthStreamingMode(I)V

    .line 540
    new-instance v33, Ljava/io/PrintWriter;

    move-object/from16 v38, v33

    move-object/from16 v33, v38

    move-object/from16 v34, v38

    move-object/from16 v35, v5

    invoke-virtual/range {v35 .. v35}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v12, v33

    .line 541
    move-object/from16 v33, v12

    move-object/from16 v34, v3

    invoke-virtual/range {v33 .. v34}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 542
    move-object/from16 v33, v12

    invoke-virtual/range {v33 .. v33}, Ljava/io/PrintWriter;->close()V

    .line 543
    move-object/from16 v33, v5

    invoke-virtual/range {v33 .. v33}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 545
    move-object/from16 v33, v5

    invoke-virtual/range {v33 .. v33}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v33

    move/from16 v13, v33

    .line 546
    move/from16 v33, v13

    const/16 v34, 0xc8

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_2

    new-instance v33, Ljava/io/IOException;

    move-object/from16 v38, v33

    move-object/from16 v33, v38

    move-object/from16 v34, v38

    new-instance v35, Ljava/lang/StringBuffer;

    move-object/from16 v38, v35

    move-object/from16 v35, v38

    move-object/from16 v36, v38

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuffer;-><init>()V

    const-string v36, "HTTP "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v35

    move/from16 v36, v13

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v33
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 558
    :catch_0
    move-exception v33

    move-object/from16 v11, v33

    .line 555
    :try_start_1
    new-instance v33, Ljava/io/IOException;

    move-object/from16 v38, v33

    move-object/from16 v33, v38

    move-object/from16 v34, v38

    new-instance v35, Ljava/lang/StringBuffer;

    move-object/from16 v38, v35

    move-object/from16 v35, v38

    move-object/from16 v36, v38

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuffer;-><init>()V

    const-string v36, "Connection failed: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v35

    move-object/from16 v36, v11

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v33
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v33

    move-object/from16 v7, v33

    .line 557
    move-object/from16 v33, v6

    if-eqz v33, :cond_0

    move-object/from16 v33, v6

    :try_start_2
    invoke-virtual/range {v33 .. v33}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 558
    :cond_0
    :goto_0
    move-object/from16 v33, v5

    if-eqz v33, :cond_1

    move-object/from16 v33, v5

    invoke-virtual/range {v33 .. v33}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_1
    move-object/from16 v33, v7

    throw v33

    .line 548
    :cond_2
    :try_start_3
    new-instance v33, Ljava/io/BufferedReader;

    move-object/from16 v38, v33

    move-object/from16 v33, v38

    move-object/from16 v34, v38

    new-instance v35, Ljava/io/InputStreamReader;

    move-object/from16 v38, v35

    move-object/from16 v35, v38

    move-object/from16 v36, v38

    move-object/from16 v37, v5

    invoke-virtual/range {v37 .. v37}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct/range {v34 .. v35}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object/from16 v6, v33

    .line 549
    new-instance v33, Ljava/lang/StringBuilder;

    move-object/from16 v38, v33

    move-object/from16 v33, v38

    move-object/from16 v34, v38

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v14, v33

    .line 551
    :goto_1
    move-object/from16 v33, v6

    invoke-virtual/range {v33 .. v33}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v38, v33

    move-object/from16 v33, v38

    move-object/from16 v34, v38

    move-object/from16 v15, v34

    if-nez v33, :cond_5

    .line 552
    move-object/from16 v33, v14

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v33

    move-object/from16 v9, v33

    .line 557
    move-object/from16 v33, v6

    if-eqz v33, :cond_3

    move-object/from16 v33, v6

    :try_start_4
    invoke-virtual/range {v33 .. v33}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 558
    :cond_3
    :goto_2
    move-object/from16 v33, v5

    if-eqz v33, :cond_4

    move-object/from16 v33, v5

    :try_start_5
    invoke-virtual/range {v33 .. v33}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_4
    move-object/from16 v33, v9

    move-object/from16 v2, v33

    return-object v2

    .line 551
    :cond_5
    move-object/from16 v33, v14

    move-object/from16 v34, v15

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v33

    goto :goto_1

    .line 557
    :catch_1
    move-exception v33

    move-object/from16 v31, v33

    goto :goto_2

    :catch_2
    move-exception v33

    move-object/from16 v31, v33

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    invoke-static {p0}, Lf/f/Mainactivity;->check(Landroid/content/Context;)V

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    const-string v6, "com.goxome.aidestudio"

    invoke-static {v5, v6}, Ladrt/ADRTLogCatReader;->onContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 62
    move-object v5, v0

    move-object v6, v1

    invoke-super {v5, v6}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    move-object v5, v0

    const/high16 v6, 0x7f030000

    invoke-virtual {v5, v6}, Lcom/byp/dts/MainActivity;->setContentView(I)V

    .line 65
    move-object v5, v0

    sput-object v5, Lcom/byp/dts/MainActivity;->instance:Lcom/byp/dts/MainActivity;

    .line 66
    move-object v5, v0

    move-object v6, v0

    const-string v7, "window"

    invoke-virtual {v6, v7}, Lcom/byp/dts/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    iput-object v6, v5, Lcom/byp/dts/MainActivity;->windowManager:Landroid/view/WindowManager;

    .line 68
    move-object v5, v0

    invoke-static {v5}, Lcom/byp/dts/MainActivity;->Start(Landroid/content/Context;)V

    .line 70
    move-object v5, v0

    iget-boolean v5, v5, Lcom/byp/dts/MainActivity;->hasLaunched:Z

    if-nez v5, :cond_0

    .line 72
    move-object v5, v0

    :try_start_0
    new-instance v6, Landroid/content/Intent;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lcom/byp/dts/MainActivity;->GAME_ACTIVITY:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v6}, Lcom/byp/dts/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 73
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/byp/dts/MainActivity;->hasLaunched:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :cond_0
    :goto_0
    move-object v5, v0

    invoke-direct {v5}, Lcom/byp/dts/MainActivity;->startGameWatcherService()V

    return-void

    .line 73
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 75
    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 459
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Lcom/byp/dts/MainActivity;->floatingExitButton:Landroid/view/View;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/byp/dts/MainActivity;->windowManager:Landroid/view/WindowManager;

    if-eqz v4, :cond_0

    .line 460
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/byp/dts/MainActivity;->windowManager:Landroid/view/WindowManager;

    move-object v5, v0

    iget-object v5, v5, Lcom/byp/dts/MainActivity;->floatingExitButton:Landroid/view/View;

    invoke-interface {v4, v5}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    :goto_0
    move-object v4, v0

    const/4 v5, 0x0

    check-cast v5, Landroid/view/View;

    iput-object v5, v4, Lcom/byp/dts/MainActivity;->floatingExitButton:Landroid/view/View;

    .line 463
    :cond_0
    const/4 v4, 0x0

    check-cast v4, Lcom/byp/dts/MainActivity;

    sput-object v4, Lcom/byp/dts/MainActivity;->instance:Lcom/byp/dts/MainActivity;

    .line 464
    move-object v4, v0

    invoke-super {v4}, Landroid/app/Activity;->onDestroy()V

    return-void

    .line 460
    :catch_0
    move-exception v4

    move-object v2, v4

    goto :goto_0
.end method

.method public showFloatingExitButton()V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 383
    move-object/from16 v0, p0

    move-object v7, v0

    iget-object v7, v7, Lcom/byp/dts/MainActivity;->floatingExitButton:Landroid/view/View;

    if-nez v7, :cond_0

    move-object v7, v0

    iget-boolean v7, v7, Lcom/byp/dts/MainActivity;->isExitButtonRemoved:Z

    if-nez v7, :cond_0

    move-object v7, v0

    iget-object v7, v7, Lcom/byp/dts/MainActivity;->windowManager:Landroid/view/WindowManager;

    if-nez v7, :cond_1

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    move-object v7, v0

    new-instance v8, Landroid/widget/Button;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v10, v0

    invoke-direct {v9, v10}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v8, v7, Lcom/byp/dts/MainActivity;->floatingExitButton:Landroid/view/View;

    .line 386
    move-object v7, v0

    iget-object v7, v7, Lcom/byp/dts/MainActivity;->floatingExitButton:Landroid/view/View;

    check-cast v7, Landroid/widget/Button;

    move-object v2, v7

    .line 387
    move-object v7, v2

    const-string v8, "EXIT"

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 388
    move-object v7, v2

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setTextColor(I)V

    .line 389
    move-object v7, v2

    const/high16 v8, 0x41400000    # 12.0f

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setTextSize(F)V

    .line 390
    move-object v7, v2

    const/4 v8, 0x0

    check-cast v8, Landroid/graphics/Typeface;

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 391
    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    invoke-direct {v8}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    move-object v3, v7

    .line 392
    move-object v7, v3

    const-string v8, "#ff4444"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 393
    move-object v7, v3

    const/high16 v8, 0x42a00000    # 80.0f

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 394
    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 395
    move-object v7, v2

    const/16 v8, 0x14

    const/16 v9, 0x14

    const/16 v10, 0x14

    const/16 v11, 0x14

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/Button;->setPadding(IIII)V

    .line 396
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v7, v8, :cond_2

    move-object v7, v2

    const/high16 v8, 0x41200000    # 10.0f

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setElevation(F)V

    .line 398
    :cond_2
    new-instance v7, Landroid/view/WindowManager$LayoutParams;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    const/4 v9, -0x2

    const/4 v10, -0x2

    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x1a

    if-lt v11, v12, :cond_3

    const/16 v11, 0x7f6

    :goto_1
    const/16 v12, 0x8

    const/4 v13, -0x3

    invoke-direct/range {v8 .. v13}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    move-object v4, v7

    .line 407
    move-object v7, v4

    const/16 v8, 0x35

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 408
    move-object v7, v4

    const/16 v8, 0x1e

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 409
    move-object v7, v4

    const/16 v8, 0x64

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 412
    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Lcom/byp/dts/MainActivity;->windowManager:Landroid/view/WindowManager;

    move-object v8, v0

    iget-object v8, v8, Lcom/byp/dts/MainActivity;->floatingExitButton:Landroid/view/View;

    move-object v9, v4

    invoke-interface {v7, v8, v9}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    const/4 v7, 0x2

    new-array v7, v7, [I

    move-object v5, v7

    .line 419
    move-object v7, v0

    iget-object v7, v7, Lcom/byp/dts/MainActivity;->floatingExitButton:Landroid/view/View;

    new-instance v8, Lcom/byp/dts/MainActivity$100000010;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v10, v0

    move-object v11, v5

    move-object v12, v4

    invoke-direct {v9, v10, v11, v12}, Lcom/byp/dts/MainActivity$100000010;-><init>(Lcom/byp/dts/MainActivity;[ILandroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 441
    move-object v7, v0

    iget-object v7, v7, Lcom/byp/dts/MainActivity;->floatingExitButton:Landroid/view/View;

    new-instance v8, Lcom/byp/dts/MainActivity$100000011;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v10, v0

    invoke-direct {v9, v10}, Lcom/byp/dts/MainActivity$100000011;-><init>(Lcom/byp/dts/MainActivity;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 398
    :cond_3
    const/16 v11, 0x7d2

    goto :goto_1

    .line 412
    :catch_0
    move-exception v7

    move-object v5, v7

    .line 414
    move-object v7, v5

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 415
    goto/16 :goto_0
.end method
