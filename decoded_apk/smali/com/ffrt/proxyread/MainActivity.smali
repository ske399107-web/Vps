.class public final Lcom/ffrt/proxyread/MainActivity;
.super Lo/U0;
.source "SourceFile"


# static fields
.field public static final synthetic I:I


# instance fields
.field public A:Landroid/widget/TextView;

.field public B:Landroid/widget/TextView;

.field public C:Landroid/widget/TextView;

.field public D:Lcom/google/android/material/button/MaterialButton;

.field public E:Lcom/google/android/material/button/MaterialButton;

.field public F:Landroid/widget/EditText;

.field public G:Z

.field public final H:Lo/s0;

.field public final x:Landroid/os/Handler;

.field public y:Landroid/widget/TextView;

.field public z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lo/U0;-><init>()V

    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 13
    iput-object v0, p0, Lcom/ffrt/proxyread/MainActivity;->x:Landroid/os/Handler;

    .line 15
    new-instance v0, Lo/s0;

    .line 17
    const/4 v1, 0x3

    .line 18
    invoke-direct {v0, v1, p0}, Lo/s0;-><init>(ILjava/lang/Object;)V

    .line 21
    iput-object v0, p0, Lcom/ffrt/proxyread/MainActivity;->H:Lo/s0;

    .line 23
    return-void
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lo/U0;->onActivityResult(IILandroid/content/Intent;)V

    .line 4
    const/4 p3, 0x7

    .line 5
    if-ne p1, p3, :cond_0

    .line 7
    const/4 v0, -0x1

    .line 8
    if-ne p2, v0, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/ffrt/proxyread/MainActivity;->v()V

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    if-ne p1, p3, :cond_1

    .line 16
    sget p1, Lo/ta;->a:I

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    const/16 p2, 0x9

    .line 21
    if-ne p1, p2, :cond_4

    .line 23
    sget-object p1, Lo/g9;->a:Landroid/os/Handler;

    .line 25
    sget-object p1, Lo/g9;->f:Lcom/ffrt/proxyread/HudAccessService;

    .line 27
    if-eqz p1, :cond_2

    .line 29
    const/4 p1, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_2
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    .line 34
    move-result p1

    .line 35
    :goto_0
    if-nez p1, :cond_3

    .line 37
    sget p1, Lo/ta;->a:I

    .line 39
    :cond_3
    invoke-virtual {p0}, Lcom/ffrt/proxyread/MainActivity;->v()V

    .line 42
    :cond_4
    :goto_1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-super {p0, p1}, Lo/U0;->onCreate(Landroid/os/Bundle;)V

    .line 6
    sget-boolean p1, Lo/L1;->b:Z

    .line 8
    if-nez p1, :cond_0

    .line 10
    new-instance p1, Landroid/content/Intent;

    .line 12
    const-class v0, Lcom/ffrt/proxyread/LoginActivity;

    .line 14
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 17
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 23
    return-void

    .line 24
    :cond_0
    const p1, 0x7f0b001d

    .line 27
    invoke-virtual {p0, p1}, Lo/U0;->setContentView(I)V

    .line 30
    const p1, 0x7f0801ff

    .line 33
    invoke-virtual {p0, p1}, Lo/U0;->findViewById(I)Landroid/view/View;

    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Landroid/widget/TextView;

    .line 39
    iput-object p1, p0, Lcom/ffrt/proxyread/MainActivity;->y:Landroid/widget/TextView;

    .line 41
    const p1, 0x7f080047

    .line 44
    invoke-virtual {p0, p1}, Lo/U0;->findViewById(I)Landroid/view/View;

    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Landroid/widget/TextView;

    .line 50
    iput-object p1, p0, Lcom/ffrt/proxyread/MainActivity;->z:Landroid/widget/TextView;

    .line 52
    const p1, 0x7f080048

    .line 55
    invoke-virtual {p0, p1}, Lo/U0;->findViewById(I)Landroid/view/View;

    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Landroid/widget/TextView;

    .line 61
    iput-object p1, p0, Lcom/ffrt/proxyread/MainActivity;->A:Landroid/widget/TextView;

    .line 63
    const p1, 0x7f080198

    .line 66
    invoke-virtual {p0, p1}, Lo/U0;->findViewById(I)Landroid/view/View;

    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Landroid/widget/TextView;

    .line 72
    iput-object p1, p0, Lcom/ffrt/proxyread/MainActivity;->B:Landroid/widget/TextView;

    .line 74
    const p1, 0x7f080178

    .line 77
    invoke-virtual {p0, p1}, Lo/U0;->findViewById(I)Landroid/view/View;

    .line 80
    move-result-object p1

    .line 81
    check-cast p1, Landroid/widget/TextView;

    .line 83
    iput-object p1, p0, Lcom/ffrt/proxyread/MainActivity;->C:Landroid/widget/TextView;

    .line 85
    const p1, 0x7f080069

    .line 88
    invoke-virtual {p0, p1}, Lo/U0;->findViewById(I)Landroid/view/View;

    .line 91
    move-result-object p1

    .line 92
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    .line 94
    iput-object p1, p0, Lcom/ffrt/proxyread/MainActivity;->D:Lcom/google/android/material/button/MaterialButton;

    .line 96
    const p1, 0x7f080067

    .line 99
    invoke-virtual {p0, p1}, Lo/U0;->findViewById(I)Landroid/view/View;

    .line 102
    move-result-object p1

    .line 103
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    .line 105
    iput-object p1, p0, Lcom/ffrt/proxyread/MainActivity;->E:Lcom/google/android/material/button/MaterialButton;

    .line 107
    const p1, 0x7f080161

    .line 110
    invoke-virtual {p0, p1}, Lo/U0;->findViewById(I)Landroid/view/View;

    .line 113
    move-result-object p1

    .line 114
    check-cast p1, Landroid/widget/EditText;

    .line 116
    iput-object p1, p0, Lcom/ffrt/proxyread/MainActivity;->F:Landroid/widget/EditText;

    .line 118
    invoke-static {p0}, Lcom/ffrt/proxyread/Integrity;->c(Landroid/content/Context;)V

    .line 121
    invoke-static {}, Lcom/ffrt/proxyread/Integrity;->a()Z

    .line 124
    const/4 p1, 0x1

    .line 125
    if-nez p1, :cond_1

    .line 127
    invoke-virtual {p0}, Lcom/ffrt/proxyread/MainActivity;->r()V

    .line 130
    :cond_1
    iget-object p1, p0, Lcom/ffrt/proxyread/MainActivity;->D:Lcom/google/android/material/button/MaterialButton;

    .line 132
    const/4 v2, 0x0

    .line 133
    if-eqz p1, :cond_6

    .line 135
    new-instance v3, Lo/Ea;

    .line 137
    invoke-direct {v3, p0, v1}, Lo/Ea;-><init>(Lcom/ffrt/proxyread/MainActivity;I)V

    .line 140
    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    const p1, 0x7f080172

    .line 146
    invoke-virtual {p0, p1}, Lo/U0;->findViewById(I)Landroid/view/View;

    .line 149
    move-result-object p1

    .line 150
    check-cast p1, Lcom/google/android/material/slider/Slider;

    .line 152
    const v3, 0x7f080173

    .line 155
    invoke-virtual {p0, v3}, Lo/U0;->findViewById(I)Landroid/view/View;

    .line 158
    move-result-object v3

    .line 159
    check-cast v3, Landroid/widget/TextView;

    .line 161
    const-string v4, "proxy_read"

    .line 163
    invoke-virtual {p0, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 166
    move-result-object v5

    .line 167
    const-string v6, "radar_size"

    .line 169
    const/16 v7, 0x64

    .line 171
    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 174
    move-result v5

    .line 175
    const/16 v6, 0x46

    .line 177
    const/16 v7, 0xb4

    .line 179
    invoke-static {v5, v6, v7}, Lo/Ha;->l(III)I

    .line 182
    move-result v5

    .line 183
    const/high16 v6, 0x428c0000    # 70.0f

    .line 185
    invoke-virtual {p1, v6}, Lcom/google/android/material/slider/Slider;->setValueFrom(F)V

    .line 188
    const/high16 v6, 0x43340000    # 180.0f

    .line 190
    invoke-virtual {p1, v6}, Lcom/google/android/material/slider/Slider;->setValueTo(F)V

    .line 193
    const/high16 v6, 0x40a00000    # 5.0f

    .line 195
    invoke-virtual {p1, v6}, Lcom/google/android/material/slider/Slider;->setStepSize(F)V

    .line 198
    int-to-float v6, v5

    .line 199
    invoke-virtual {p1, v6}, Lcom/google/android/material/slider/Slider;->setValue(F)V

    .line 202
    new-instance v6, Ljava/lang/StringBuilder;

    .line 204
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    const-string v5, "%"

    .line 212
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    move-result-object v5

    .line 219
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    new-instance v5, Lo/Ca;

    .line 224
    invoke-direct {v5, v3, p0}, Lo/Ca;-><init>(Landroid/widget/TextView;Lcom/ffrt/proxyread/MainActivity;)V

    .line 227
    iget-object p1, p1, Lo/W2;->m:Ljava/util/ArrayList;

    .line 229
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    const p1, 0x7f080174

    .line 235
    invoke-virtual {p0, p1}, Lo/U0;->findViewById(I)Landroid/view/View;

    .line 238
    move-result-object p1

    .line 239
    check-cast p1, Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 241
    invoke-virtual {p0, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 244
    move-result-object v3

    .line 245
    const-string v5, "radar_on"

    .line 247
    invoke-interface {v3, v5, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 250
    move-result v3

    .line 251
    invoke-virtual {p1, v3}, Lo/Cf;->setChecked(Z)V

    .line 254
    new-instance v3, Lo/Da;

    .line 256
    invoke-direct {v3, p0, v0}, Lo/Da;-><init>(Landroid/view/KeyEvent$Callback;I)V

    .line 259
    invoke-virtual {p1, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 262
    const p1, 0x7f0800bc

    .line 265
    invoke-virtual {p0, p1}, Lo/U0;->findViewById(I)Landroid/view/View;

    .line 268
    move-result-object p1

    .line 269
    check-cast p1, Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 271
    invoke-virtual {p0, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 274
    move-result-object v3

    .line 275
    const-string v5, "esp_on"

    .line 277
    invoke-interface {v3, v5, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 280
    move-result v3

    .line 281
    invoke-virtual {p1, v3}, Lo/Cf;->setChecked(Z)V

    .line 284
    new-instance v3, Lo/Da;

    .line 286
    const/4 v5, 0x2

    .line 287
    invoke-direct {v3, p0, v5}, Lo/Da;-><init>(Landroid/view/KeyEvent$Callback;I)V

    .line 290
    invoke-virtual {p1, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 293
    const p1, 0x7f08011a

    .line 296
    invoke-virtual {p0, p1}, Lo/U0;->findViewById(I)Landroid/view/View;

    .line 299
    move-result-object p1

    .line 300
    check-cast p1, Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 302
    invoke-virtual {p0, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 305
    move-result-object v3

    .line 306
    const-string v5, "moco_on"

    .line 308
    invoke-interface {v3, v5, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 311
    move-result v3

    .line 312
    invoke-virtual {p1, v3}, Lo/Cf;->setChecked(Z)V

    .line 315
    sget-object v3, Lo/Hb;->a:[B

    .line 317
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 320
    move-result v3

    .line 321
    invoke-static {v3}, Lo/Hb;->k(Z)V

    .line 324
    new-instance v3, Lo/Da;

    .line 326
    invoke-direct {v3, p0, v1}, Lo/Da;-><init>(Landroid/view/KeyEvent$Callback;I)V

    .line 329
    invoke-virtual {p1, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 332
    iget-object p1, p0, Lcom/ffrt/proxyread/MainActivity;->E:Lcom/google/android/material/button/MaterialButton;

    .line 334
    if-eqz p1, :cond_5

    .line 336
    new-instance v3, Lo/Ea;

    .line 338
    invoke-direct {v3, p0, v0}, Lo/Ea;-><init>(Lcom/ffrt/proxyread/MainActivity;I)V

    .line 341
    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    iget-object p1, p0, Lcom/ffrt/proxyread/MainActivity;->F:Landroid/widget/EditText;

    .line 346
    if-eqz p1, :cond_4

    .line 348
    new-instance v2, Lo/Fa;

    .line 350
    invoke-direct {v2, p0}, Lo/Fa;-><init>(Lcom/ffrt/proxyread/MainActivity;)V

    .line 353
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 356
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 358
    const/16 v2, 0x21

    .line 360
    if-lt p1, v2, :cond_2

    .line 362
    const-string p1, "android.permission.POST_NOTIFICATIONS"

    .line 364
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    .line 367
    move-result v3

    .line 368
    if-eqz v3, :cond_2

    .line 370
    filled-new-array {p1}, [Ljava/lang/String;

    .line 373
    move-result-object p1

    .line 374
    invoke-virtual {p0, p1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 377
    :cond_2
    sget-object p1, Lcom/ffrt/proxyread/WirelessPair;->INSTANCE:Lcom/ffrt/proxyread/WirelessPair;

    .line 379
    iget-object v2, p0, Lcom/ffrt/proxyread/MainActivity;->H:Lo/s0;

    .line 381
    invoke-virtual {p1, v2}, Lcom/ffrt/proxyread/WirelessPair;->attach(Lo/F8;)V

    .line 384
    invoke-virtual {p0}, Lcom/ffrt/proxyread/MainActivity;->t()V

    .line 387
    invoke-virtual {p0}, Lcom/ffrt/proxyread/MainActivity;->u()V

    .line 390
    iget-boolean p1, p0, Lcom/ffrt/proxyread/MainActivity;->G:Z

    .line 392
    if-nez p1, :cond_3

    .line 394
    invoke-virtual {p0, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 397
    move-result-object p1

    .line 398
    const-string v2, "vpn_auto"

    .line 400
    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 403
    move-result p1

    .line 404
    if-eqz p1, :cond_3

    .line 406
    sget-object p1, Lcom/ffrt/proxyread/VpnCaptureService;->Companion:Lo/ji;

    .line 408
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 411
    invoke-static {}, Lcom/ffrt/proxyread/VpnCaptureService;->access$getRunning$cp()Z

    .line 414
    move-result p1

    .line 415
    if-nez p1, :cond_3

    .line 417
    iget-object p1, p0, Lcom/ffrt/proxyread/MainActivity;->x:Landroid/os/Handler;

    .line 419
    new-instance v0, Lo/Ga;

    .line 421
    invoke-direct {v0, p0, v1}, Lo/Ga;-><init>(Lcom/ffrt/proxyread/MainActivity;I)V

    .line 424
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 427
    :cond_3
    return-void

    .line 428
    :cond_4
    const-string p1, "pairCode"

    .line 430
    invoke-static {p1}, Lo/x9;->e0(Ljava/lang/String;)V

    .line 433
    throw v2

    .line 434
    :cond_5
    const-string p1, "btnAdb"

    .line 436
    invoke-static {p1}, Lo/x9;->e0(Ljava/lang/String;)V

    .line 439
    throw v2

    .line 440
    :cond_6
    const-string p1, "btnVpn"

    .line 442
    invoke-static {p1}, Lo/x9;->e0(Ljava/lang/String;)V

    .line 445
    throw v2
.end method

.method public final onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lo/U0;->onResume()V

    .line 4
    invoke-static {p0}, Lcom/ffrt/proxyread/Integrity;->c(Landroid/content/Context;)V

    .line 7
    invoke-static {}, Lcom/ffrt/proxyread/Integrity;->a()Z

    .line 10
    const/4 v0, 0x1

    .line 11
    if-nez v0, :cond_0

    .line 13
    invoke-virtual {p0}, Lcom/ffrt/proxyread/MainActivity;->r()V

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/ffrt/proxyread/MainActivity;->t()V

    .line 19
    invoke-virtual {p0}, Lcom/ffrt/proxyread/MainActivity;->u()V

    .line 22
    return-void
.end method

.method public final r()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/ffrt/proxyread/MainActivity;->G:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/ffrt/proxyread/MainActivity;->G:Z

    .line 6
    iget-object v1, p0, Lcom/ffrt/proxyread/MainActivity;->C:Landroid/widget/TextView;

    .line 8
    const/4 v2, 0x0

    .line 9
    const-string v3, "refuseLine"

    .line 11
    if-eqz v1, :cond_7

    .line 13
    const/4 v4, 0x0

    .line 14
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 17
    iget-object v1, p0, Lcom/ffrt/proxyread/MainActivity;->C:Landroid/widget/TextView;

    .line 19
    if-eqz v1, :cond_6

    .line 21
    const v5, 0x7f050032

    .line 24
    invoke-virtual {p0, v5}, Landroid/content/Context;->getColor(I)I

    .line 27
    move-result v5

    .line 28
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 31
    if-nez v0, :cond_1

    .line 33
    iget-object v0, p0, Lcom/ffrt/proxyread/MainActivity;->C:Landroid/widget/TextView;

    .line 35
    if-eqz v0, :cond_0

    .line 37
    invoke-static {}, Lcom/ffrt/proxyread/VpsSession;->connectProxy()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-static {v3}, Lo/x9;->e0(Ljava/lang/String;)V

    .line 48
    throw v2

    .line 49
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ffrt/proxyread/MainActivity;->D:Lcom/google/android/material/button/MaterialButton;

    .line 51
    if-eqz v0, :cond_5

    .line 53
    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 56
    iget-object v0, p0, Lcom/ffrt/proxyread/MainActivity;->E:Lcom/google/android/material/button/MaterialButton;

    .line 58
    if-eqz v0, :cond_4

    .line 60
    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 63
    iget-object v0, p0, Lcom/ffrt/proxyread/MainActivity;->F:Landroid/widget/EditText;

    .line 65
    if-eqz v0, :cond_3

    .line 67
    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 70
    const-string v0, "proxy_read"

    .line 72
    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 75
    move-result-object v0

    .line 76
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 79
    move-result-object v0

    .line 80
    const-string v1, "vpn_auto"

    .line 82
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 85
    move-result-object v0

    .line 86
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 89
    sget-object v0, Lcom/ffrt/proxyread/VpnCaptureService;->Companion:Lo/ji;

    .line 91
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    invoke-static {}, Lcom/ffrt/proxyread/VpnCaptureService;->access$getRunning$cp()Z

    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_2

    .line 100
    invoke-virtual {p0}, Lcom/ffrt/proxyread/MainActivity;->w()V

    .line 103
    :cond_2
    return-void

    .line 104
    :cond_3
    const-string v0, "pairCode"

    .line 106
    invoke-static {v0}, Lo/x9;->e0(Ljava/lang/String;)V

    .line 109
    throw v2

    .line 110
    :cond_4
    const-string v0, "btnAdb"

    .line 112
    invoke-static {v0}, Lo/x9;->e0(Ljava/lang/String;)V

    .line 115
    throw v2

    .line 116
    :cond_5
    const-string v0, "btnVpn"

    .line 118
    invoke-static {v0}, Lo/x9;->e0(Ljava/lang/String;)V

    .line 121
    throw v2

    .line 122
    :cond_6
    invoke-static {v3}, Lo/x9;->e0(Ljava/lang/String;)V

    .line 125
    throw v2

    .line 126
    :cond_7
    invoke-static {v3}, Lo/x9;->e0(Ljava/lang/String;)V

    .line 129
    throw v2
.end method

.method public final s()V
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    new-instance v0, Landroid/content/Intent;

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    const-string v3, "package:"

    .line 17
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 30
    move-result-object v1

    .line 31
    const-string v2, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    .line 33
    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 36
    const/16 v1, 0x9

    .line 38
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 41
    sget v0, Lo/ta;->a:I

    .line 43
    return-void

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/ffrt/proxyread/MainActivity;->v()V

    .line 47
    return-void
.end method

.method public final t()V
    .locals 7

    .line 1
    const-string v0, ""

    .line 3
    const-string v1, "crg_auth"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 9
    move-result-object v1

    .line 10
    const-string v3, "session_jws"

    .line 12
    const/4 v4, 0x0

    .line 13
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v3

    .line 17
    if-nez v3, :cond_0

    .line 19
    :catch_0
    :goto_0
    move-object v0, v4

    .line 20
    goto :goto_2

    .line 21
    :cond_0
    const-string v5, "license"

    .line 23
    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object v5

    .line 27
    if-nez v5, :cond_1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    :try_start_0
    sget-object v6, Lo/n5;->a:Ljava/security/SecureRandom;

    .line 32
    const-string v6, "time_remaining"

    .line 34
    invoke-interface {v1, v6, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    if-nez v1, :cond_2

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    move-object v0, v1

    .line 42
    :goto_1
    invoke-static {p0, v3, v5, v0}, Lo/n5;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo/m5;

    .line 45
    move-result-object v0

    .line 46
    iget-object v1, v0, Lo/m5;->c:Ljava/lang/String;

    .line 48
    sput-object v1, Lo/L1;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_2
    if-eqz v0, :cond_3

    .line 52
    iget-object v1, v0, Lo/m5;->c:Ljava/lang/String;

    .line 54
    invoke-static {v1}, Lo/tf;->G0(Ljava/lang/String;)Z

    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_4

    .line 60
    :cond_3
    move-object v1, v4

    .line 61
    :cond_4
    if-eqz v0, :cond_5

    .line 63
    iget-object v0, v0, Lo/m5;->g:Ljava/lang/String;

    .line 65
    invoke-static {v0}, Lo/tf;->G0(Ljava/lang/String;)Z

    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_6

    .line 71
    :cond_5
    move-object v0, v4

    .line 72
    :cond_6
    filled-new-array {v1, v0}, [Ljava/lang/String;

    .line 75
    move-result-object v0

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    .line 78
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 81
    :goto_3
    const/4 v3, 0x2

    .line 82
    if-ge v2, v3, :cond_8

    .line 84
    aget-object v3, v0, v2

    .line 86
    if-eqz v3, :cond_7

    .line 88
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 93
    goto :goto_3

    .line 94
    :cond_8
    const/16 v0, 0x3e

    .line 96
    const-string v2, " \u00b7 "

    .line 98
    invoke-static {v1, v2, v4, v0}, Lo/e4;->k0(Ljava/util/Collection;Ljava/lang/String;Lo/F8;I)Ljava/lang/String;

    .line 101
    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/ffrt/proxyread/MainActivity;->B:Landroid/widget/TextView;

    .line 104
    if-eqz v1, :cond_11

    .line 106
    invoke-static {v0}, Lo/tf;->G0(Ljava/lang/String;)Z

    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_9

    .line 112
    const-string v0, "Proxy en partida \u00b7 no bloquea toques"

    .line 114
    :cond_9
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    sget-object v0, Lcom/ffrt/proxyread/VpnCaptureService;->Companion:Lo/ji;

    .line 119
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    invoke-static {}, Lcom/ffrt/proxyread/VpnCaptureService;->access$getRunning$cp()Z

    .line 125
    move-result v0

    .line 126
    const-string v1, "btnVpn"

    .line 128
    const-string v2, "vpnChip"

    .line 130
    if-eqz v0, :cond_d

    .line 132
    iget-object v0, p0, Lcom/ffrt/proxyread/MainActivity;->y:Landroid/widget/TextView;

    .line 134
    if-eqz v0, :cond_c

    .line 136
    const-string v3, "Activado"

    .line 138
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, p0, Lcom/ffrt/proxyread/MainActivity;->y:Landroid/widget/TextView;

    .line 143
    if-eqz v0, :cond_b

    .line 145
    const v2, 0x7f050019

    .line 148
    invoke-virtual {p0, v2}, Landroid/content/Context;->getColor(I)I

    .line 151
    move-result v2

    .line 152
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    iget-object v0, p0, Lcom/ffrt/proxyread/MainActivity;->D:Lcom/google/android/material/button/MaterialButton;

    .line 157
    if-eqz v0, :cond_a

    .line 159
    const-string v1, "Desactivar proxy"

    .line 161
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    goto :goto_4

    .line 165
    :cond_a
    invoke-static {v1}, Lo/x9;->e0(Ljava/lang/String;)V

    .line 168
    throw v4

    .line 169
    :cond_b
    invoke-static {v2}, Lo/x9;->e0(Ljava/lang/String;)V

    .line 172
    throw v4

    .line 173
    :cond_c
    invoke-static {v2}, Lo/x9;->e0(Ljava/lang/String;)V

    .line 176
    throw v4

    .line 177
    :cond_d
    iget-object v0, p0, Lcom/ffrt/proxyread/MainActivity;->y:Landroid/widget/TextView;

    .line 179
    if-eqz v0, :cond_10

    .line 181
    const-string v3, "Desactivado"

    .line 183
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v0, p0, Lcom/ffrt/proxyread/MainActivity;->y:Landroid/widget/TextView;

    .line 188
    if-eqz v0, :cond_f

    .line 190
    const v2, 0x7f050310

    .line 193
    invoke-virtual {p0, v2}, Landroid/content/Context;->getColor(I)I

    .line 196
    move-result v2

    .line 197
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 200
    iget-object v0, p0, Lcom/ffrt/proxyread/MainActivity;->D:Lcom/google/android/material/button/MaterialButton;

    .line 202
    if-eqz v0, :cond_e

    .line 204
    const-string v1, "Activar proxy"

    .line 206
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    :goto_4
    return-void

    .line 210
    :cond_e
    invoke-static {v1}, Lo/x9;->e0(Ljava/lang/String;)V

    .line 213
    throw v4

    .line 214
    :cond_f
    invoke-static {v2}, Lo/x9;->e0(Ljava/lang/String;)V

    .line 217
    throw v4

    .line 218
    :cond_10
    invoke-static {v2}, Lo/x9;->e0(Ljava/lang/String;)V

    .line 221
    throw v4

    .line 222
    :cond_11
    const-string v0, "sessionLine"

    .line 224
    invoke-static {v0}, Lo/x9;->e0(Ljava/lang/String;)V

    .line 227
    throw v4
.end method

.method public final u()V
    .locals 4

    .line 1
    sget-object v0, Lcom/ffrt/proxyread/WirelessPair;->INSTANCE:Lcom/ffrt/proxyread/WirelessPair;

    .line 3
    invoke-virtual {v0}, Lcom/ffrt/proxyread/WirelessPair;->getPainted()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const-string v2, "adbChip"

    .line 10
    if-eqz v0, :cond_2

    .line 12
    iget-object v0, p0, Lcom/ffrt/proxyread/MainActivity;->z:Landroid/widget/TextView;

    .line 14
    if-eqz v0, :cond_1

    .line 16
    const-string v3, "Conectado"

    .line 18
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v0, p0, Lcom/ffrt/proxyread/MainActivity;->z:Landroid/widget/TextView;

    .line 23
    if-eqz v0, :cond_0

    .line 25
    const v1, 0x7f050019

    .line 28
    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    .line 31
    move-result v1

    .line 32
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-static {v2}, Lo/x9;->e0(Ljava/lang/String;)V

    .line 39
    throw v1

    .line 40
    :cond_1
    invoke-static {v2}, Lo/x9;->e0(Ljava/lang/String;)V

    .line 43
    throw v1

    .line 44
    :cond_2
    iget-object v0, p0, Lcom/ffrt/proxyread/MainActivity;->z:Landroid/widget/TextView;

    .line 46
    if-eqz v0, :cond_4

    .line 48
    const-string v3, "Sin conexi\u00f3n"

    .line 50
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/ffrt/proxyread/MainActivity;->z:Landroid/widget/TextView;

    .line 55
    if-eqz v0, :cond_3

    .line 57
    const v1, 0x7f0502f3

    .line 60
    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    .line 63
    move-result v1

    .line 64
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    :goto_0
    return-void

    .line 68
    :cond_3
    invoke-static {v2}, Lo/x9;->e0(Ljava/lang/String;)V

    .line 71
    throw v1

    .line 72
    :cond_4
    invoke-static {v2}, Lo/x9;->e0(Ljava/lang/String;)V

    .line 75
    throw v1
.end method

.method public final v()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p0}, Lcom/ffrt/proxyread/Integrity;->c(Landroid/content/Context;)V

    .line 13
    goto :goto_0

    .line 16
    :goto_0
    invoke-static {p0}, Landroid/net/VpnService;->prepare(Landroid/content/Context;)Landroid/content/Intent;

    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_0

    .line 22
    const/4 v0, 0x7

    .line 23
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 26
    return-void

    .line 27
    :cond_0
    const-string v1, "proxy_read"

    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 33
    move-result-object v1

    .line 34
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 37
    move-result-object v1

    .line 38
    const-string v2, "vpn_auto"

    .line 40
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 43
    move-result-object v1

    .line 44
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 47
    new-instance v1, Landroid/content/Intent;

    .line 49
    const-class v2, Lcom/ffrt/proxyread/VpnCaptureService;

    .line 51
    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 56
    const/16 v3, 0x1a

    .line 58
    if-lt v2, v3, :cond_1

    .line 60
    invoke-static {p0, v1}, Lo/b;->n(Lcom/ffrt/proxyread/MainActivity;Landroid/content/Intent;)V

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 67
    :goto_1
    sget v1, Lo/ta;->a:I

    .line 69
    iget-object v1, p0, Lcom/ffrt/proxyread/MainActivity;->x:Landroid/os/Handler;

    .line 71
    new-instance v2, Lo/Ga;

    .line 73
    invoke-direct {v2, p0, v0}, Lo/Ga;-><init>(Lcom/ffrt/proxyread/MainActivity;I)V

    .line 76
    const-wide/16 v3, 0x190

    .line 78
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 81
    new-instance v0, Lo/Ga;

    .line 83
    const/4 v2, 0x2

    .line 84
    invoke-direct {v0, p0, v2}, Lo/Ga;-><init>(Lcom/ffrt/proxyread/MainActivity;I)V

    .line 87
    const-wide/16 v2, 0x258

    .line 89
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 92
    return-void

    invoke-virtual {p0}, Lcom/ffrt/proxyread/MainActivity;->r()V

    return-void
.end method

.method public final w()V
    .locals 4

    .line 1
    const-string v0, "proxy_read"

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 11
    move-result-object v0

    .line 12
    const-string v2, "vpn_auto"

    .line 14
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 21
    new-instance v0, Landroid/content/Intent;

    .line 23
    const-class v1, Lcom/ffrt/proxyread/VpnCaptureService;

    .line 25
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28
    const-string v1, "com.ffrt.proxyread.STOP"

    .line 30
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 37
    new-instance v0, Lo/Ga;

    .line 39
    const/4 v1, 0x3

    .line 40
    invoke-direct {v0, p0, v1}, Lo/Ga;-><init>(Lcom/ffrt/proxyread/MainActivity;I)V

    .line 43
    iget-object v1, p0, Lcom/ffrt/proxyread/MainActivity;->x:Landroid/os/Handler;

    .line 45
    const-wide/16 v2, 0x12c

    .line 47
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 50
    return-void
.end method
