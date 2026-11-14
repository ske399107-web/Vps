.class public final Lo/Hb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B

.field public static volatile b:Z

.field public static volatile c:J

.field public static volatile d:J

.field public static volatile e:Ljava/lang/String;

.field public static volatile f:Ljava/lang/String;

.field public static volatile g:J

.field public static volatile h:Z

.field public static volatile i:Z

.field public static volatile j:Z

.field public static volatile k:I

.field public static final l:Ljava/util/HashMap;

.field public static final m:Ljava/util/LinkedHashSet;

.field public static final n:Ljava/util/LinkedHashSet;

.field public static final o:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/16 v0, 0x50

    .line 3
    const/16 v1, 0x40

    .line 5
    const/16 v2, 0x10

    .line 7
    const/16 v3, 0x100

    .line 9
    new-array v3, v3, [B

    .line 11
    fill-array-data v3, :array_0

    .line 14
    sput-object v3, Lo/Hb;->a:[B

    .line 16
    const-string v3, ""

    .line 18
    sput-object v3, Lo/Hb;->e:Ljava/lang/String;

    .line 20
    sput-object v3, Lo/Hb;->f:Ljava/lang/String;

    .line 22
    new-instance v3, Ljava/util/HashMap;

    .line 24
    invoke-direct {v3, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 27
    sput-object v3, Lo/Hb;->l:Ljava/util/HashMap;

    .line 29
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 31
    invoke-direct {v2, v0}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 34
    sput-object v2, Lo/Hb;->m:Ljava/util/LinkedHashSet;

    .line 36
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 38
    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 41
    sput-object v0, Lo/Hb;->n:Ljava/util/LinkedHashSet;

    .line 43
    new-instance v0, Ljava/lang/Object;

    .line 45
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 48
    sput-object v0, Lo/Hb;->o:Ljava/lang/Object;

    .line 50
    return-void

    .line 51
    :array_0
    .array-data 1
        0x0t
        0x9t
        0x12t
        0x1bt
        0x24t
        0x2dt
        0x36t
        0x3ft
        0x48t
        0x41t
        0x5at
        0x53t
        0x6ct
        0x65t
        0x7et
        0x77t
        0x19t
        0x10t
        0xbt
        0x2t
        0x3dt
        0x34t
        0x2ft
        0x26t
        0x51t
        0x58t
        0x43t
        0x4at
        0x75t
        0x7ct
        0x67t
        0x6et
        0x32t
        0x3bt
        0x20t
        0x29t
        0x16t
        0x1ft
        0x4t
        0xdt
        0x7at
        0x73t
        0x68t
        0x61t
        0x5et
        0x57t
        0x4ct
        0x45t
        0x2bt
        0x22t
        0x39t
        0x30t
        0xft
        0x6t
        0x1dt
        0x14t
        0x63t
        0x6at
        0x71t
        0x78t
        0x47t
        0x4et
        0x55t
        0x5ct
        0x64t
        0x6dt
        0x76t
        0x7ft
        0x40t
        0x49t
        0x52t
        0x5bt
        0x2ct
        0x25t
        0x3et
        0x37t
        0x8t
        0x1t
        0x1at
        0x13t
        0x7dt
        0x74t
        0x6ft
        0x66t
        0x59t
        0x50t
        0x4bt
        0x42t
        0x35t
        0x3ct
        0x27t
        0x2et
        0x11t
        0x18t
        0x3t
        0xat
        0x56t
        0x5ft
        0x44t
        0x4dt
        0x72t
        0x7bt
        0x60t
        0x69t
        0x1et
        0x17t
        0xct
        0x5t
        0x3at
        0x33t
        0x28t
        0x21t
        0x4ft
        0x46t
        0x5dt
        0x54t
        0x6bt
        0x62t
        0x79t
        0x70t
        0x7t
        0xet
        0x15t
        0x1ct
        0x23t
        0x2at
        0x31t
        0x38t
        0x41t
        0x48t
        0x53t
        0x5at
        0x65t
        0x6ct
        0x77t
        0x7et
        0x9t
        0x0t
        0x1bt
        0x12t
        0x2dt
        0x24t
        0x3ft
        0x36t
        0x58t
        0x51t
        0x4at
        0x43t
        0x7ct
        0x75t
        0x6et
        0x67t
        0x10t
        0x19t
        0x2t
        0xbt
        0x34t
        0x3dt
        0x26t
        0x2ft
        0x73t
        0x7at
        0x61t
        0x68t
        0x57t
        0x5et
        0x45t
        0x4ct
        0x3bt
        0x32t
        0x29t
        0x20t
        0x1ft
        0x16t
        0xdt
        0x4t
        0x6at
        0x63t
        0x78t
        0x71t
        0x4et
        0x47t
        0x5ct
        0x55t
        0x22t
        0x2bt
        0x30t
        0x39t
        0x6t
        0xft
        0x14t
        0x1dt
        0x25t
        0x2ct
        0x37t
        0x3et
        0x1t
        0x8t
        0x13t
        0x1at
        0x6dt
        0x64t
        0x7ft
        0x76t
        0x49t
        0x40t
        0x5bt
        0x52t
        0x3ct
        0x35t
        0x2et
        0x27t
        0x18t
        0x11t
        0xat
        0x3t
        0x74t
        0x7dt
        0x66t
        0x6ft
        0x50t
        0x59t
        0x42t
        0x4bt
        0x17t
        0x1et
        0x5t
        0xct
        0x33t
        0x3at
        0x21t
        0x28t
        0x5ft
        0x56t
        0x4dt
        0x44t
        0x7bt
        0x72t
        0x69t
        0x60t
        0xet
        0x7t
        0x1ct
        0x15t
        0x2at
        0x23t
        0x38t
        0x31t
        0x46t
        0x4ft
        0x54t
        0x5dt
        0x62t
        0x6bt
        0x70t
        0x79t
    .end array-data
.end method

.method public static a([B)V
    .locals 6

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x3

    .line 3
    if-ge v0, v1, :cond_0

    .line 5
    goto :goto_1

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    move v1, v0

    .line 8
    :goto_0
    array-length v2, p0

    .line 9
    if-ge v1, v2, :cond_3

    .line 11
    aget-byte v2, p0, v1

    .line 13
    and-int/lit16 v2, v2, 0xff

    .line 15
    const/16 v3, 0x81

    .line 17
    if-gt v3, v2, :cond_1

    .line 19
    const/16 v3, 0xc1

    .line 21
    if-ge v2, v3, :cond_1

    .line 23
    add-int/lit8 v2, v1, 0x3

    .line 25
    array-length v3, p0

    .line 26
    if-ge v2, v3, :cond_1

    .line 28
    add-int/lit8 v2, v1, 0x1

    .line 30
    aget-byte v2, p0, v2

    .line 32
    and-int/lit16 v2, v2, 0xff

    .line 34
    const/16 v3, 0x80

    .line 36
    if-ne v2, v3, :cond_1

    .line 38
    add-int/lit8 v2, v1, 0x2

    .line 40
    aget-byte v2, p0, v2

    .line 42
    and-int/lit16 v2, v2, 0xff

    .line 44
    if-ne v2, v3, :cond_1

    .line 46
    invoke-static {v1, p0, v0}, Lo/Hb;->d(I[BZ)V

    .line 49
    add-int/lit8 v1, v1, 0x4

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-static {p0, v1}, Lo/Hb;->i([BI)Lo/Cc;

    .line 55
    move-result-object v2

    .line 56
    if-eqz v2, :cond_2

    .line 58
    iget-object v3, v2, Lo/Cc;->a:Ljava/lang/Object;

    .line 60
    check-cast v3, Ljava/lang/Number;

    .line 62
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    .line 65
    move-result-wide v4

    .line 66
    invoke-static {v4, v5}, Lo/Hb;->c(J)Z

    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_2

    .line 72
    iget-object v2, v2, Lo/Cc;->b:Ljava/lang/Object;

    .line 74
    check-cast v2, Ljava/lang/Number;

    .line 76
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 79
    move-result v4

    .line 80
    if-le v4, v1, :cond_2

    .line 82
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    .line 85
    move-result-wide v3

    .line 86
    invoke-static {v3, v4}, Lo/Hb;->g(J)V

    .line 89
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 92
    move-result v1

    .line 93
    goto :goto_0

    .line 94
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 96
    goto :goto_0

    .line 97
    :cond_3
    :goto_1
    return-void
.end method

.method public static b([BI)Ljava/lang/String;
    .locals 5

    .line 1
    array-length v0, p0

    .line 2
    if-le p1, v0, :cond_0

    .line 4
    move p1, v0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    mul-int/lit8 v1, p1, 0x2

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, p1, :cond_1

    .line 15
    aget-byte v2, p0, v1

    .line 17
    and-int/lit16 v3, v2, 0xff

    .line 19
    shr-int/lit8 v3, v3, 0x4

    .line 21
    const/16 v4, 0x10

    .line 23
    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    .line 26
    move-result v3

    .line 27
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    and-int/lit8 v2, v2, 0xf

    .line 32
    invoke-static {v2, v4}, Ljava/lang/Character;->forDigit(II)C

    .line 35
    move-result v2

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    add-int/lit8 v1, v1, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 46
    const-string p1, "toString(...)"

    .line 48
    invoke-static {p0, p1}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    return-object p0
.end method

.method public static c(J)Z
    .locals 7

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    cmp-long v2, p0, v0

    .line 5
    const/4 v3, 0x0

    .line 6
    if-lez v2, :cond_1

    .line 8
    const-wide/32 v4, 0x7fffffff

    .line 11
    cmp-long v2, p0, v4

    .line 13
    if-lez v2, :cond_0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-wide/16 v4, 0xff

    .line 18
    and-long/2addr v4, p0

    .line 19
    long-to-int v2, v4

    .line 20
    const/16 v4, 0x18

    .line 22
    ushr-long v4, p0, v4

    .line 24
    long-to-int v4, v4

    .line 25
    const/16 v5, 0x8

    .line 27
    ushr-long/2addr p0, v5

    .line 28
    const-wide/32 v5, 0xffff

    .line 31
    and-long/2addr p0, v5

    .line 32
    const/4 v5, 0x1

    .line 33
    if-gt v5, v2, :cond_1

    .line 35
    const/16 v6, 0x51

    .line 37
    if-ge v2, v6, :cond_1

    .line 39
    if-gt v5, v4, :cond_1

    .line 41
    const/16 v2, 0x80

    .line 43
    if-ge v4, v2, :cond_1

    .line 45
    cmp-long p0, p0, v0

    .line 47
    if-nez p0, :cond_1

    .line 49
    move v3, v5

    .line 50
    :cond_1
    :goto_0
    return v3
.end method

.method public static d(I[BZ)V
    .locals 5

    .line 1
    const-string v0, "b"

    .line 3
    invoke-static {p1, v0}, Lo/x9;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {p1, p0}, Lo/Hb;->i([BI)Lo/Cc;

    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v1, v0, Lo/Cc;->a:Ljava/lang/Object;

    .line 15
    check-cast v1, Ljava/lang/Number;

    .line 17
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 20
    move-result-wide v1

    .line 21
    const-wide/16 v3, 0x0

    .line 23
    cmp-long v1, v1, v3

    .line 25
    if-lez v1, :cond_3

    .line 27
    iget-object v1, v0, Lo/Cc;->a:Ljava/lang/Object;

    .line 29
    check-cast v1, Ljava/lang/Number;

    .line 31
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 34
    move-result-wide v1

    .line 35
    invoke-static {v1, v2}, Lo/Hb;->c(J)Z

    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_1

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    iget-object v1, v0, Lo/Cc;->a:Ljava/lang/Object;

    .line 44
    check-cast v1, Ljava/lang/Number;

    .line 46
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 49
    move-result-wide v1

    .line 50
    invoke-static {v1, v2}, Lo/Hb;->g(J)V

    .line 53
    aget-byte p0, p1, p0

    .line 55
    and-int/lit8 p0, p0, 0x7f

    .line 57
    const/4 p1, 0x1

    .line 58
    if-gt p1, p0, :cond_2

    .line 60
    const/16 p1, 0x33

    .line 62
    if-ge p0, p1, :cond_2

    .line 64
    sget-object p1, Lo/Hb;->o:Ljava/lang/Object;

    .line 66
    monitor-enter p1

    .line 67
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    move-result-object p0

    .line 71
    sget-object v1, Lo/Hb;->l:Ljava/util/HashMap;

    .line 73
    iget-object v2, v0, Lo/Cc;->a:Ljava/lang/Object;

    .line 75
    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p1

    .line 79
    goto :goto_0

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    monitor-exit p1

    .line 82
    throw p0

    .line 83
    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    .line 85
    iget-object p0, v0, Lo/Cc;->a:Ljava/lang/Object;

    .line 87
    check-cast p0, Ljava/lang/Number;

    .line 89
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 92
    move-result-wide p0

    .line 93
    invoke-static {p0, p1}, Lo/Hb;->f(J)V

    .line 96
    :cond_3
    :goto_1
    return-void
.end method

.method public static e(I[BZ)V
    .locals 6

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    if-eqz p2, :cond_5

    .line 6
    const/16 v3, 0x65

    .line 8
    if-ne p0, v3, :cond_5

    .line 10
    move p0, v2

    .line 11
    move p2, p0

    .line 12
    :goto_0
    const/4 v3, 0x2

    .line 13
    const/4 v4, 0x0

    .line 14
    if-ge p0, v3, :cond_0

    .line 16
    invoke-static {p1, p2}, Lo/Hb;->i([BI)Lo/Cc;

    .line 19
    move-result-object p2

    .line 20
    if-eqz p2, :cond_1

    .line 22
    iget-object p2, p2, Lo/Cc;->b:Ljava/lang/Object;

    .line 24
    check-cast p2, Ljava/lang/Number;

    .line 26
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 29
    move-result p2

    .line 30
    add-int/lit8 p0, p0, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-static {p1, p2}, Lo/Hb;->i([BI)Lo/Cc;

    .line 36
    move-result-object p0

    .line 37
    if-eqz p0, :cond_1

    .line 39
    iget-object p0, p0, Lo/Cc;->a:Ljava/lang/Object;

    .line 41
    check-cast p0, Ljava/lang/Number;

    .line 43
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 46
    move-result-wide p0

    .line 47
    const-wide v3, 0xffffffffL

    .line 52
    and-long/2addr p0, v3

    .line 53
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 56
    move-result-object v4

    .line 57
    :cond_1
    if-eqz v4, :cond_4

    .line 59
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 62
    move-result-wide p0

    .line 63
    cmp-long p2, p0, v0

    .line 65
    if-nez p2, :cond_2

    .line 67
    return-void

    .line 68
    :cond_2
    sget-object p2, Lo/Hb;->o:Ljava/lang/Object;

    .line 70
    monitor-enter p2

    .line 71
    :try_start_0
    sget-boolean v0, Lo/Hb;->j:Z

    .line 73
    if-eqz v0, :cond_3

    .line 75
    sget-object v0, Lo/Hb;->m:Ljava/util/LinkedHashSet;

    .line 77
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    .line 80
    sput-boolean v2, Lo/Hb;->j:Z

    .line 82
    goto :goto_1

    .line 83
    :catchall_0
    move-exception p0

    .line 84
    goto :goto_2

    .line 85
    :cond_3
    :goto_1
    sget-object v0, Lo/Hb;->m:Ljava/util/LinkedHashSet;

    .line 87
    invoke-virtual {v0, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 90
    move-result v1

    .line 91
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 94
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit p2

    .line 96
    if-eqz v1, :cond_e

    .line 98
    const-string p2, "ffrt-moco"

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    .line 102
    const-string v2, "entity add id="

    .line 104
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 110
    const-string p0, " n="

    .line 112
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    move-result-object p0

    .line 122
    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    goto/16 :goto_4

    .line 127
    :goto_2
    monitor-exit p2

    .line 128
    throw p0

    .line 129
    :cond_4
    return-void

    .line 130
    :cond_5
    if-eqz p2, :cond_7

    .line 132
    const/16 v3, 0x66

    .line 134
    if-ne p0, v3, :cond_7

    .line 136
    invoke-static {p1, v2}, Lo/Hb;->i([BI)Lo/Cc;

    .line 139
    move-result-object p0

    .line 140
    if-eqz p0, :cond_6

    .line 142
    iget-object p0, p0, Lo/Cc;->a:Ljava/lang/Object;

    .line 144
    check-cast p0, Ljava/lang/Number;

    .line 146
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 149
    move-result-wide p0

    .line 150
    sget-object p2, Lo/Hb;->o:Ljava/lang/Object;

    .line 152
    monitor-enter p2

    .line 153
    :try_start_1
    sget-object v0, Lo/Hb;->m:Ljava/util/LinkedHashSet;

    .line 155
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 158
    move-result-object v1

    .line 159
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 162
    move-result v1

    .line 163
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 166
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 167
    monitor-exit p2

    .line 168
    if-eqz v1, :cond_e

    .line 170
    const-string p2, "ffrt-moco"

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    .line 174
    const-string v2, "entity del id="

    .line 176
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 182
    const-string p0, " n="

    .line 184
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    move-result-object p0

    .line 194
    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    goto/16 :goto_4

    .line 199
    :catchall_1
    move-exception p0

    .line 200
    monitor-exit p2

    .line 201
    throw p0

    .line 202
    :cond_6
    return-void

    .line 203
    :cond_7
    const/4 v3, 0x1

    .line 204
    if-eqz p2, :cond_8

    .line 206
    const/16 v4, 0x67

    .line 208
    if-ne p0, v4, :cond_8

    .line 210
    sget-object p0, Lo/Hb;->o:Ljava/lang/Object;

    .line 212
    monitor-enter p0

    .line 213
    :try_start_2
    sget-object p1, Lo/Hb;->m:Ljava/util/LinkedHashSet;

    .line 215
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    .line 218
    move-result p2

    .line 219
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->clear()V

    .line 222
    sput-boolean v3, Lo/Hb;->j:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 224
    monitor-exit p0

    .line 225
    sput-boolean v2, Lo/Hb;->i:Z

    .line 227
    const-string p0, "ffrt-moco"

    .line 229
    new-instance p1, Ljava/lang/StringBuilder;

    .line 231
    const-string v0, "match end entities="

    .line 233
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    move-result-object p1

    .line 243
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    goto :goto_4

    .line 247
    :catchall_2
    move-exception p1

    .line 248
    monitor-exit p0

    .line 249
    throw p1

    .line 250
    :cond_8
    if-nez p2, :cond_9

    .line 252
    const/16 v4, 0x7d1

    .line 254
    if-eq p0, v4, :cond_a

    .line 256
    :cond_9
    if-eqz p2, :cond_e

    .line 258
    const/16 v4, 0x68

    .line 260
    if-eq p0, v4, :cond_a

    .line 262
    const/16 v4, 0x69

    .line 264
    if-ne p0, v4, :cond_e

    .line 266
    :cond_a
    invoke-static {p1, v2}, Lo/Hb;->i([BI)Lo/Cc;

    .line 269
    move-result-object p1

    .line 270
    if-eqz p1, :cond_e

    .line 272
    iget-object p1, p1, Lo/Cc;->a:Ljava/lang/Object;

    .line 274
    check-cast p1, Ljava/lang/Number;

    .line 276
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 279
    move-result-wide v4

    .line 280
    cmp-long p1, v4, v0

    .line 282
    if-nez p1, :cond_b

    .line 284
    return-void

    .line 285
    :cond_b
    sget-wide v0, Lo/Hb;->c:J

    .line 287
    cmp-long p1, v0, v4

    .line 289
    if-eqz p1, :cond_c

    .line 291
    move v2, v3

    .line 292
    :cond_c
    invoke-static {v4, v5}, Lo/Hb;->f(J)V

    .line 295
    if-eqz v2, :cond_e

    .line 297
    const-string p1, "ffrt-moco"

    .line 299
    if-eqz p2, :cond_d

    .line 301
    const-string p2, "S2C"

    .line 303
    goto :goto_3

    .line 304
    :cond_d
    const-string p2, "C2S"

    .line 306
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 308
    const-string v1, "local cmd="

    .line 310
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 316
    const-string p0, " dir="

    .line 318
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    const-string p0, " id="

    .line 326
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 335
    move-result-object p0

    .line 336
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    nop

    .line 340
    :cond_e
    :goto_4
    return-void
.end method

.method public static f(J)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    cmp-long v0, p0, v0

    .line 5
    if-gtz v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {p0, p1}, Lo/Hb;->g(J)V

    .line 11
    sget-wide v0, Lo/Hb;->c:J

    .line 13
    cmp-long v0, v0, p0

    .line 15
    if-eqz v0, :cond_1

    .line 17
    sput-wide p0, Lo/Hb;->c:J

    .line 19
    const-wide/16 v0, 0x7f

    .line 21
    and-long/2addr v0, p0

    .line 22
    long-to-int v0, v0

    .line 23
    const/4 v1, 0x1

    .line 24
    if-gt v1, v0, :cond_1

    .line 26
    const/16 v1, 0x33

    .line 28
    if-ge v0, v1, :cond_1

    .line 30
    sget-object v1, Lo/Hb;->o:Ljava/lang/Object;

    .line 32
    monitor-enter v1

    .line 33
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object v0

    .line 37
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 40
    move-result-object p0

    .line 41
    sget-object p1, Lo/Hb;->l:Ljava/util/HashMap;

    .line 43
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit v1

    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    monitor-exit v1

    .line 50
    throw p0

    .line 51
    :cond_1
    :goto_0
    return-void
.end method

.method public static g(J)V
    .locals 4

    .line 1
    invoke-static {p0, p1}, Lo/Hb;->c(J)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v0, Lo/Hb;->o:Ljava/lang/Object;

    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    sget-object v1, Lo/Hb;->n:Ljava/util/LinkedHashSet;

    .line 13
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    .line 16
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    const/16 v3, 0x50

    .line 19
    if-lt v2, v3, :cond_1

    .line 21
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :cond_1
    :try_start_1
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 30
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    if-nez v2, :cond_2

    .line 33
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    .line 38
    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    monitor-exit v0

    .line 40
    const/4 v0, 0x2

    .line 41
    if-eq v1, v0, :cond_3

    .line 43
    const/16 v0, 0xa

    .line 45
    if-eq v1, v0, :cond_3

    .line 47
    const/16 v0, 0x32

    .line 49
    if-ne v1, v0, :cond_4

    .line 51
    :cond_3
    const-string v0, "ffrt-moco"

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    .line 55
    const-string v3, "ents "

    .line 57
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    const-string v1, " last="

    .line 65
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object p0

    .line 75
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_4
    return-void

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    monitor-exit v0

    .line 81
    throw p0
.end method

.method public static h([BIJ)I
    .locals 4

    .line 1
    const-wide v0, 0xffffffffL

    .line 6
    and-long/2addr p2, v0

    .line 7
    :goto_0
    const-wide/16 v0, 0x80

    .line 9
    cmp-long v2, p2, v0

    .line 11
    if-ltz v2, :cond_0

    .line 13
    const-wide/16 v2, 0x7f

    .line 15
    and-long/2addr v2, p2

    .line 16
    or-long/2addr v0, v2

    .line 17
    long-to-int v0, v0

    .line 18
    int-to-byte v0, v0

    .line 19
    aput-byte v0, p0, p1

    .line 21
    add-int/lit8 p1, p1, 0x1

    .line 23
    const/4 v0, 0x7

    .line 24
    ushr-long/2addr p2, v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    long-to-int p2, p2

    .line 27
    int-to-byte p2, p2

    .line 28
    aput-byte p2, p0, p1

    .line 30
    add-int/lit8 p1, p1, 0x1

    .line 32
    return p1
.end method

.method public static i([BI)Lo/Cc;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-ltz p1, :cond_3

    .line 4
    array-length v1, p0

    .line 5
    if-lt p1, v1, :cond_0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-wide/16 v1, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    :cond_1
    array-length v4, p0

    .line 12
    if-ge p1, v4, :cond_3

    .line 14
    aget-byte v4, p0, p1

    .line 16
    and-int/lit16 v5, v4, 0xff

    .line 18
    add-int/lit8 p1, p1, 0x1

    .line 20
    and-int/lit8 v4, v4, 0x7f

    .line 22
    int-to-long v6, v4

    .line 23
    shl-long/2addr v6, v3

    .line 24
    or-long/2addr v1, v6

    .line 25
    const/16 v4, 0x80

    .line 27
    if-ge v5, v4, :cond_2

    .line 29
    new-instance p0, Lo/Cc;

    .line 31
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 34
    move-result-object v0

    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object p1

    .line 39
    invoke-direct {p0, v0, p1}, Lo/Cc;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 42
    return-object p0

    .line 43
    :cond_2
    add-int/lit8 v3, v3, 0x7

    .line 45
    const/16 v4, 0x23

    .line 47
    if-le v3, v4, :cond_1

    .line 49
    :cond_3
    :goto_0
    return-object v0
.end method

.method public static j()V
    .locals 3

    .line 1
    sget-object v0, Lo/Hb;->o:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lo/Hb;->l:Ljava/util/HashMap;

    .line 6
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 9
    sget-object v1, Lo/Hb;->m:Ljava/util/LinkedHashSet;

    .line 11
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->clear()V

    .line 14
    sget-object v1, Lo/Hb;->n:Ljava/util/LinkedHashSet;

    .line 16
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    monitor-exit v0

    .line 20
    const-wide/16 v0, 0x0

    .line 22
    sput-wide v0, Lo/Hb;->c:J

    .line 24
    sput-wide v0, Lo/Hb;->d:J

    .line 26
    const-string v2, ""

    .line 28
    sput-object v2, Lo/Hb;->e:Ljava/lang/String;

    .line 30
    const-string v2, ""

    .line 32
    sput-object v2, Lo/Hb;->f:Ljava/lang/String;

    .line 34
    sput-wide v0, Lo/Hb;->g:J

    .line 36
    const/4 v0, 0x0

    .line 37
    sput-boolean v0, Lo/Hb;->h:Z

    .line 39
    sput-boolean v0, Lo/Hb;->i:Z

    .line 41
    sput-boolean v0, Lo/Hb;->j:Z

    .line 43
    sput v0, Lo/Hb;->k:I

    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception v1

    .line 47
    monitor-exit v0

    .line 48
    throw v1
.end method

.method public static k(Z)V
    .locals 1

    .line 1
    sget-boolean v0, Lo/Hb;->b:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    if-nez p0, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    sput-boolean v0, Lo/Hb;->h:Z

    .line 10
    :cond_0
    sput-boolean p0, Lo/Hb;->b:Z

    .line 12
    if-nez p0, :cond_1

    .line 14
    const-string p0, ""

    .line 16
    sput-object p0, Lo/Hb;->e:Ljava/lang/String;

    .line 18
    :cond_1
    return-void
.end method

.method public static l(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    sget-object v2, Lo/Hb;->f:Ljava/lang/String;

    .line 7
    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 13
    sget-wide v2, Lo/Hb;->g:J

    .line 15
    sub-long v2, v0, v2

    .line 17
    const-wide/16 v4, 0x7d0

    .line 19
    cmp-long v2, v2, v4

    .line 21
    if-gez v2, :cond_0

    .line 23
    return-void

    .line 24
    :cond_0
    sput-object p0, Lo/Hb;->f:Ljava/lang/String;

    .line 26
    sput-wide v0, Lo/Hb;->g:J

    .line 28
    sget-wide v0, Lo/Hb;->c:J

    .line 30
    sget-object v2, Lo/Tg;->a:Lo/Tg;

    .line 32
    invoke-static {}, Lo/Tg;->p()Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 36
    sget-boolean v3, Lo/Hb;->b:Z

    .line 38
    new-instance v4, Ljava/lang/StringBuilder;

    .line 40
    const-string v5, "skip "

    .line 42
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const-string p0, " pid="

    .line 50
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 56
    const-string p0, " perm="

    .line 58
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string p0, " on="

    .line 66
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object p0

    .line 76
    const-string v0, "ffrt-moco"

    .line 78
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void
.end method

.method public static m(Ljava/lang/String;)Ljava/util/List;
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 3
    sget-boolean v1, Lo/Hb;->h:Z

    .line 5
    sget-boolean v2, Lo/Hb;->b:Z

    .line 7
    if-nez v2, :cond_0

    .line 9
    if-nez v1, :cond_0

    .line 11
    sget-object v0, Lo/V6;->a:Lo/V6;

    .line 13
    return-object v0

    .line 14
    :cond_0
    sget-boolean v2, Lo/Hb;->b:Z

    .line 16
    if-eqz v2, :cond_1

    .line 18
    sget-boolean v2, Lo/Hb;->j:Z

    .line 20
    if-eqz v2, :cond_1

    .line 22
    const-string v0, "ended"

    .line 24
    invoke-static {v0}, Lo/Hb;->l(Ljava/lang/String;)V

    .line 27
    sget-object v0, Lo/V6;->a:Lo/V6;

    .line 29
    return-object v0

    .line 30
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 33
    move-result-wide v2

    .line 34
    if-nez v1, :cond_2

    .line 36
    sget-wide v4, Lo/Hb;->d:J

    .line 38
    sub-long v4, v2, v4

    .line 40
    const-wide/16 v6, 0x7d0

    .line 42
    cmp-long v4, v4, v6

    .line 44
    if-gez v4, :cond_2

    .line 46
    sget-object v0, Lo/V6;->a:Lo/V6;

    .line 48
    return-object v0

    .line 49
    :cond_2
    sget-object v4, Lo/Tg;->a:Lo/Tg;

    .line 51
    invoke-static/range {p0 .. p0}, Lo/Tg;->x(Ljava/lang/String;)I

    .line 54
    move-result v5

    .line 55
    if-ltz v5, :cond_30

    .line 57
    const/16 v6, 0x100

    .line 59
    if-ge v5, v6, :cond_30

    .line 61
    sget-object v6, Lo/Tg;->e:[I

    .line 63
    if-eqz v6, :cond_2f

    .line 65
    invoke-static {}, Lo/Tg;->n()[I

    .line 68
    move-result-object v6

    .line 69
    sget-object v7, Lo/Tg;->i:[B

    .line 71
    const/4 v8, 0x0

    .line 72
    const/4 v9, 0x1

    .line 73
    const/16 v11, 0x10

    .line 75
    if-eqz v7, :cond_3

    .line 77
    array-length v12, v7

    .line 78
    if-lt v12, v11, :cond_3

    .line 80
    invoke-static {v7, v11}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 83
    move-result-object v0

    .line 84
    const-string v4, "copyOf(...)"

    .line 86
    invoke-static {v0, v4}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    goto :goto_2

    .line 90
    :cond_3
    invoke-virtual {v4}, Lo/Tg;->g()Ljava/util/List;

    .line 93
    move-result-object v7

    .line 94
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 97
    move-result v12

    .line 98
    sub-int/2addr v12, v9

    .line 99
    :goto_0
    if-ltz v12, :cond_5

    .line 101
    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 104
    move-result-object v13

    .line 105
    check-cast v13, [B

    .line 107
    array-length v14, v13

    .line 108
    if-lt v14, v11, :cond_4

    .line 110
    aget-byte v14, v13, v8

    .line 112
    and-int/lit16 v14, v14, 0xff

    .line 114
    if-ne v14, v5, :cond_4

    .line 116
    move-object v0, v13

    .line 117
    goto :goto_2

    .line 118
    :cond_4
    add-int/lit8 v12, v12, -0x1

    .line 120
    goto :goto_0

    .line 121
    :cond_5
    invoke-virtual {v4, v0}, Lo/Tg;->w(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 124
    move-result-object v7

    .line 125
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 128
    move-result-object v7

    .line 129
    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 132
    move-result v12

    .line 133
    if-eqz v12, :cond_7

    .line 135
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 138
    move-result-object v12

    .line 139
    check-cast v12, [B

    .line 141
    array-length v13, v12

    .line 142
    if-lt v13, v11, :cond_6

    .line 144
    aget-byte v13, v12, v8

    .line 146
    and-int/lit16 v13, v13, 0xff

    .line 148
    if-ne v13, v5, :cond_6

    .line 150
    move-object v0, v12

    .line 151
    goto :goto_2

    .line 152
    :cond_7
    invoke-virtual {v4, v0}, Lo/Tg;->w(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 159
    move-result-object v0

    .line 160
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 163
    move-result v4

    .line 164
    if-eqz v4, :cond_9

    .line 166
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 169
    move-result-object v4

    .line 170
    move-object v7, v4

    .line 171
    check-cast v7, [B

    .line 173
    array-length v7, v7

    .line 174
    if-lt v7, v11, :cond_8

    .line 176
    goto :goto_1

    .line 177
    :cond_9
    const/4 v4, 0x0

    .line 178
    :goto_1
    move-object v0, v4

    .line 179
    check-cast v0, [B

    .line 181
    :goto_2
    if-nez v0, :cond_a

    .line 183
    const-string v0, "nokey"

    .line 185
    invoke-static {v0}, Lo/Hb;->l(Ljava/lang/String;)V

    .line 188
    sget-object v0, Lo/V6;->a:Lo/V6;

    .line 190
    return-object v0

    .line 191
    :cond_a
    sget-wide v12, Lo/Hb;->c:J

    .line 193
    const-wide/16 v14, 0x0

    .line 195
    cmp-long v4, v12, v14

    .line 197
    if-gtz v4, :cond_b

    .line 199
    const-string v0, "nopid"

    .line 201
    invoke-static {v0}, Lo/Hb;->l(Ljava/lang/String;)V

    .line 204
    sget-object v0, Lo/V6;->a:Lo/V6;

    .line 206
    return-object v0

    .line 207
    :cond_b
    sget-boolean v4, Lo/Hb;->b:Z

    .line 209
    if-eqz v4, :cond_f

    .line 211
    new-instance v4, Ljava/util/ArrayList;

    .line 213
    const/16 v7, 0x40

    .line 215
    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 218
    sget-object v16, Lo/Hb;->o:Ljava/lang/Object;

    .line 220
    monitor-enter v16

    .line 221
    :try_start_0
    sget-object v17, Lo/Hb;->m:Ljava/util/LinkedHashSet;

    .line 223
    invoke-virtual/range {v17 .. v17}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 226
    move-result-object v10

    .line 227
    const-string v9, "iterator(...)"

    .line 229
    invoke-static {v10, v9}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 235
    move-result v9

    .line 236
    if-eqz v9, :cond_e

    .line 238
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 241
    move-result-object v9

    .line 242
    const-string v11, "next(...)"

    .line 244
    invoke-static {v9, v11}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    check-cast v9, Ljava/lang/Number;

    .line 249
    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    .line 252
    move-result-wide v20

    .line 253
    cmp-long v9, v20, v14

    .line 255
    if-eqz v9, :cond_c

    .line 257
    cmp-long v9, v20, v12

    .line 259
    if-nez v9, :cond_d

    .line 261
    :cond_c
    const/16 v11, 0x10

    .line 263
    goto :goto_3

    .line 264
    :cond_d
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 267
    move-result-object v9

    .line 268
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 274
    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    if-lt v9, v7, :cond_c

    .line 277
    monitor-exit v16

    .line 278
    goto :goto_5

    .line 279
    :catchall_0
    move-exception v0

    .line 280
    goto :goto_4

    .line 281
    :cond_e
    monitor-exit v16

    .line 282
    goto :goto_5

    .line 283
    :goto_4
    monitor-exit v16

    .line 284
    throw v0

    .line 285
    :cond_f
    sget-object v4, Lo/V6;->a:Lo/V6;

    .line 287
    :goto_5
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 290
    move-result v7

    .line 291
    if-eqz v7, :cond_10

    .line 293
    if-nez v1, :cond_10

    .line 295
    sget-boolean v1, Lo/Hb;->i:Z

    .line 297
    if-nez v1, :cond_10

    .line 299
    const-string v0, "noentity"

    .line 301
    invoke-static {v0}, Lo/Hb;->l(Ljava/lang/String;)V

    .line 304
    sget-object v0, Lo/V6;->a:Lo/V6;

    .line 306
    return-object v0

    .line 307
    :cond_10
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 310
    move-result v1

    .line 311
    if-nez v1, :cond_11

    .line 313
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 316
    move-result-object v1

    .line 317
    check-cast v1, Ljava/lang/Number;

    .line 319
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 322
    move-result-wide v9

    .line 323
    goto :goto_6

    .line 324
    :cond_11
    move-wide v9, v12

    .line 325
    :goto_6
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 328
    move-result v1

    .line 329
    const/16 v7, 0x10

    .line 331
    mul-int/2addr v1, v7

    .line 332
    add-int/2addr v1, v7

    .line 333
    new-array v1, v1, [B

    .line 335
    invoke-static {v1, v8, v9, v10}, Lo/Hb;->h([BIJ)I

    .line 338
    move-result v7

    .line 339
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 342
    move-result v11

    .line 343
    const/16 v16, 0x1

    .line 345
    if-ltz v11, :cond_12

    .line 347
    shl-int/lit8 v11, v11, 0x1

    .line 349
    :goto_7
    move-wide/from16 v20, v9

    .line 351
    goto :goto_8

    .line 352
    :cond_12
    shl-int/lit8 v11, v11, 0x1

    .line 354
    not-int v11, v11

    .line 355
    goto :goto_7

    .line 356
    :goto_8
    int-to-long v8, v11

    .line 357
    const-wide v10, 0xffffffffL

    .line 362
    and-long/2addr v8, v10

    .line 363
    invoke-static {v1, v7, v8, v9}, Lo/Hb;->h([BIJ)I

    .line 366
    move-result v7

    .line 367
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 370
    move-result-object v8

    .line 371
    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 374
    move-result v9

    .line 375
    if-eqz v9, :cond_13

    .line 377
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 380
    move-result-object v9

    .line 381
    check-cast v9, Ljava/lang/Number;

    .line 383
    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    .line 386
    move-result-wide v9

    .line 387
    invoke-static {v1, v7, v9, v10}, Lo/Hb;->h([BIJ)I

    .line 390
    move-result v7

    .line 391
    const/4 v9, 0x1

    .line 392
    aput-byte v9, v1, v7

    .line 394
    add-int/2addr v7, v9

    .line 395
    const-wide/32 v9, 0xffff

    .line 398
    invoke-static {v1, v7, v9, v10}, Lo/Hb;->h([BIJ)I

    .line 401
    move-result v7

    .line 402
    invoke-static {v1, v7, v14, v15}, Lo/Hb;->h([BIJ)I

    .line 405
    move-result v7

    .line 406
    goto :goto_9

    .line 407
    :cond_13
    invoke-static {v1, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 410
    move-result-object v1

    .line 411
    const-string v7, "copyOf(...)"

    .line 413
    invoke-static {v1, v7}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 416
    array-length v7, v0

    .line 417
    const/16 v8, 0xc

    .line 419
    const/4 v9, 0x3

    .line 420
    const/4 v11, 0x4

    .line 421
    const/16 v14, 0x8

    .line 423
    const/16 v15, 0x10

    .line 425
    if-ge v7, v15, :cond_15

    .line 427
    :cond_14
    :goto_a
    move-object/from16 v26, v0

    .line 429
    move-object/from16 v29, v1

    .line 431
    move-wide/from16 v23, v12

    .line 433
    const/4 v7, 0x0

    .line 434
    goto/16 :goto_10

    .line 436
    :cond_15
    array-length v7, v1

    .line 437
    add-int/lit8 v7, v7, 0xa

    .line 439
    rem-int/2addr v7, v14

    .line 440
    rsub-int/lit8 v7, v7, 0x8

    .line 442
    rem-int/2addr v7, v14

    .line 443
    array-length v10, v1

    .line 444
    add-int/2addr v10, v7

    .line 445
    add-int/lit8 v10, v10, 0xa

    .line 447
    if-lt v10, v15, :cond_14

    .line 449
    rem-int/lit8 v15, v10, 0x8

    .line 451
    if-eqz v15, :cond_16

    .line 453
    goto :goto_a

    .line 454
    :cond_16
    new-array v15, v11, [I

    .line 456
    const/4 v14, 0x0

    .line 457
    :goto_b
    if-ge v14, v11, :cond_17

    .line 459
    mul-int/lit8 v11, v14, 0x4

    .line 461
    invoke-static {v0, v11}, Lo/Ha;->z0([BI)I

    .line 464
    move-result v11

    .line 465
    aput v11, v15, v14

    .line 467
    add-int/lit8 v14, v14, 0x1

    .line 469
    const/4 v11, 0x4

    .line 470
    goto :goto_b

    .line 471
    :cond_17
    new-array v11, v10, [B

    .line 473
    and-int/lit8 v14, v7, 0x7

    .line 475
    int-to-byte v14, v14

    .line 476
    const/16 v16, 0x0

    .line 478
    aput-byte v14, v11, v16

    .line 480
    add-int/2addr v7, v9

    .line 481
    invoke-static {v7, v8, v1, v11}, Lo/H2;->l0(II[B[B)V

    .line 484
    new-array v7, v10, [B

    .line 486
    const/16 v14, 0x8

    .line 488
    new-array v8, v14, [B

    .line 490
    new-array v9, v14, [B

    .line 492
    move-wide/from16 v23, v12

    .line 494
    new-array v12, v14, [B

    .line 496
    new-array v13, v14, [B

    .line 498
    const/4 v14, 0x0

    .line 499
    :goto_c
    if-ge v14, v10, :cond_1b

    .line 501
    move-object/from16 v26, v0

    .line 503
    move/from16 v25, v10

    .line 505
    const/16 v0, 0x8

    .line 507
    const/4 v10, 0x0

    .line 508
    :goto_d
    if-ge v10, v0, :cond_18

    .line 510
    add-int v0, v14, v10

    .line 512
    aget-byte v0, v11, v0

    .line 514
    aget-byte v27, v13, v10

    .line 516
    xor-int v0, v0, v27

    .line 518
    int-to-byte v0, v0

    .line 519
    aput-byte v0, v8, v10

    .line 521
    add-int/lit8 v10, v10, 0x1

    .line 523
    const/16 v0, 0x8

    .line 525
    goto :goto_d

    .line 526
    :cond_18
    const/4 v0, 0x0

    .line 527
    invoke-static {v8, v0}, Lo/Ha;->z0([BI)I

    .line 530
    move-result v10

    .line 531
    const/4 v0, 0x4

    .line 532
    invoke-static {v8, v0}, Lo/Ha;->z0([BI)I

    .line 535
    move-result v27

    .line 536
    move-object/from16 v29, v1

    .line 538
    move-object/from16 v28, v11

    .line 540
    move/from16 v11, v27

    .line 542
    const/4 v0, 0x0

    .line 543
    const/16 v1, 0x10

    .line 545
    const/16 v27, 0x0

    .line 547
    :goto_e
    if-ge v0, v1, :cond_19

    .line 549
    const v1, -0x61c88647

    .line 552
    add-int v27, v27, v1

    .line 554
    shl-int/lit8 v1, v11, 0x4

    .line 556
    const/16 v16, 0x0

    .line 558
    aget v30, v15, v16

    .line 560
    add-int v1, v1, v30

    .line 562
    add-int v30, v11, v27

    .line 564
    xor-int v1, v1, v30

    .line 566
    ushr-int/lit8 v30, v11, 0x5

    .line 568
    const/16 v17, 0x1

    .line 570
    aget v31, v15, v17

    .line 572
    add-int v30, v30, v31

    .line 574
    xor-int v1, v1, v30

    .line 576
    add-int/2addr v10, v1

    .line 577
    shl-int/lit8 v1, v10, 0x4

    .line 579
    const/16 v30, 0x2

    .line 581
    aget v31, v15, v30

    .line 583
    add-int v1, v1, v31

    .line 585
    add-int v30, v10, v27

    .line 587
    xor-int v1, v1, v30

    .line 589
    ushr-int/lit8 v30, v10, 0x5

    .line 591
    const/16 v22, 0x3

    .line 593
    aget v31, v15, v22

    .line 595
    add-int v30, v30, v31

    .line 597
    xor-int v1, v1, v30

    .line 599
    add-int/2addr v11, v1

    .line 600
    add-int/lit8 v0, v0, 0x1

    .line 602
    const/16 v1, 0x10

    .line 604
    goto :goto_e

    .line 605
    :cond_19
    const/4 v0, 0x0

    .line 606
    invoke-static {v9, v0, v10}, Lo/Ha;->k0([BII)V

    .line 609
    const/4 v0, 0x4

    .line 610
    invoke-static {v9, v0, v11}, Lo/Ha;->k0([BII)V

    .line 613
    const/4 v0, 0x0

    .line 614
    :goto_f
    const/16 v1, 0x8

    .line 616
    if-ge v0, v1, :cond_1a

    .line 618
    add-int v1, v14, v0

    .line 620
    aget-byte v10, v9, v0

    .line 622
    aget-byte v11, v12, v0

    .line 624
    xor-int/2addr v10, v11

    .line 625
    int-to-byte v10, v10

    .line 626
    aput-byte v10, v7, v1

    .line 628
    add-int/lit8 v0, v0, 0x1

    .line 630
    goto :goto_f

    .line 631
    :cond_1a
    const/16 v0, 0xe

    .line 633
    const/4 v1, 0x0

    .line 634
    invoke-static {v1, v0, v8, v12}, Lo/H2;->l0(II[B[B)V

    .line 637
    add-int/lit8 v0, v14, 0x8

    .line 639
    invoke-static {v7, v13, v1, v14, v0}, Lo/H2;->j0([B[BIII)V

    .line 642
    move v14, v0

    .line 643
    move/from16 v10, v25

    .line 645
    move-object/from16 v0, v26

    .line 647
    move-object/from16 v11, v28

    .line 649
    move-object/from16 v1, v29

    .line 651
    goto/16 :goto_c

    .line 653
    :cond_1b
    move-object/from16 v26, v0

    .line 655
    move-object/from16 v29, v1

    .line 657
    :goto_10
    if-nez v7, :cond_1c

    .line 659
    const-string v0, "tea"

    .line 661
    invoke-static {v0}, Lo/Hb;->l(Ljava/lang/String;)V

    .line 664
    sget-object v0, Lo/V6;->a:Lo/V6;

    .line 666
    return-object v0

    .line 667
    :cond_1c
    sget-object v1, Lo/Tg;->a:Lo/Tg;

    .line 669
    monitor-enter v1

    .line 670
    :try_start_1
    sget-object v0, Lo/Tg;->g:Ljava/util/ArrayList;

    .line 672
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 675
    move-result v8

    .line 676
    if-eqz v8, :cond_1d

    .line 678
    sget v0, Lo/Tg;->f:I

    .line 680
    const/16 v8, 0x64

    .line 682
    const/16 v9, 0x6d

    .line 684
    invoke-static {v0, v8, v9}, Lo/Ha;->l(III)I

    .line 687
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 688
    monitor-exit v1

    .line 689
    :goto_11
    const/16 v1, 0x8

    .line 691
    goto :goto_12

    .line 692
    :catchall_1
    move-exception v0

    .line 693
    goto/16 :goto_1b

    .line 695
    :cond_1d
    :try_start_2
    sget v8, Lo/Tg;->h:I

    .line 697
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 700
    move-result v9

    .line 701
    rem-int/2addr v8, v9

    .line 702
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 705
    move-result-object v0

    .line 706
    const-string v8, "get(...)"

    .line 708
    invoke-static {v0, v8}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 711
    check-cast v0, Ljava/lang/Number;

    .line 713
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 716
    move-result v0

    .line 717
    sget v8, Lo/Tg;->h:I

    .line 719
    const/4 v9, 0x1

    .line 720
    add-int/2addr v8, v9

    .line 721
    sput v8, Lo/Tg;->h:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 723
    monitor-exit v1

    .line 724
    goto :goto_11

    .line 725
    :goto_12
    new-array v8, v1, [B

    .line 727
    array-length v1, v6

    .line 728
    const/4 v9, 0x0

    .line 729
    const/4 v10, 0x0

    .line 730
    :goto_13
    if-ge v9, v1, :cond_26

    .line 732
    aget v11, v6, v9

    .line 734
    if-eqz v11, :cond_24

    .line 736
    const/4 v12, 0x1

    .line 737
    if-eq v11, v12, :cond_22

    .line 739
    const/4 v12, 0x3

    .line 740
    if-eq v11, v12, :cond_20

    .line 742
    const/4 v12, 0x4

    .line 743
    if-eq v11, v12, :cond_1e

    .line 745
    :goto_14
    const/4 v8, 0x1

    .line 746
    const/4 v10, 0x0

    .line 747
    goto/16 :goto_18

    .line 749
    :cond_1e
    add-int/lit8 v11, v10, 0x1

    .line 751
    const/16 v12, 0x8

    .line 753
    if-lt v11, v12, :cond_1f

    .line 755
    goto :goto_14

    .line 756
    :cond_1f
    array-length v13, v7

    .line 757
    and-int/lit16 v14, v13, 0xff

    .line 759
    xor-int/2addr v14, v5

    .line 760
    int-to-byte v14, v14

    .line 761
    aput-byte v14, v8, v10

    .line 763
    ushr-int/2addr v13, v12

    .line 764
    and-int/lit16 v13, v13, 0xff

    .line 766
    xor-int/2addr v13, v5

    .line 767
    int-to-byte v13, v13

    .line 768
    aput-byte v13, v8, v11

    .line 770
    add-int/lit8 v10, v10, 0x2

    .line 772
    :goto_15
    const/4 v12, 0x3

    .line 773
    goto :goto_16

    .line 774
    :cond_20
    const/16 v12, 0x8

    .line 776
    if-lt v10, v12, :cond_21

    .line 778
    goto :goto_14

    .line 779
    :cond_21
    xor-int/lit8 v11, v5, 0x1

    .line 781
    and-int/lit16 v11, v11, 0xff

    .line 783
    int-to-byte v11, v11

    .line 784
    aput-byte v11, v8, v10

    .line 786
    add-int/lit8 v10, v10, 0x1

    .line 788
    goto :goto_15

    .line 789
    :cond_22
    add-int/lit8 v11, v10, 0x1

    .line 791
    const/16 v12, 0x8

    .line 793
    if-lt v11, v12, :cond_23

    .line 795
    goto :goto_14

    .line 796
    :cond_23
    const/16 v12, 0xca

    .line 798
    xor-int/2addr v12, v5

    .line 799
    int-to-byte v12, v12

    .line 800
    aput-byte v12, v8, v10

    .line 802
    const/4 v12, 0x3

    .line 803
    xor-int v13, v12, v5

    .line 805
    int-to-byte v13, v13

    .line 806
    aput-byte v13, v8, v11

    .line 808
    add-int/lit8 v10, v10, 0x2

    .line 810
    goto :goto_16

    .line 811
    :cond_24
    const/16 v11, 0x8

    .line 813
    const/4 v12, 0x3

    .line 814
    if-lt v10, v11, :cond_25

    .line 816
    goto :goto_14

    .line 817
    :cond_25
    and-int/lit16 v11, v5, 0xff

    .line 819
    int-to-byte v11, v11

    .line 820
    aput-byte v11, v8, v10

    .line 822
    add-int/lit8 v10, v10, 0x1

    .line 824
    :goto_16
    add-int/lit8 v9, v9, 0x1

    .line 826
    goto :goto_13

    .line 827
    :cond_26
    const/4 v1, 0x6

    .line 828
    if-eq v10, v1, :cond_27

    .line 830
    goto :goto_14

    .line 831
    :cond_27
    array-length v9, v7

    .line 832
    add-int/lit8 v10, v9, 0x8

    .line 834
    new-array v10, v10, [B

    .line 836
    int-to-byte v11, v0

    .line 837
    const/4 v12, 0x0

    .line 838
    aput-byte v11, v10, v12

    .line 840
    const/4 v11, 0x2

    .line 841
    invoke-static {v8, v10, v11, v12, v1}, Lo/H2;->j0([B[BIII)V

    .line 844
    const/16 v8, 0xc

    .line 846
    const/16 v12, 0x8

    .line 848
    invoke-static {v12, v8, v7, v10}, Lo/H2;->l0(II[B[B)V

    .line 851
    add-int/2addr v9, v1

    .line 852
    const/4 v1, 0x0

    .line 853
    const/4 v8, 0x0

    .line 854
    :goto_17
    if-ge v1, v9, :cond_28

    .line 856
    add-int v12, v11, v1

    .line 858
    aget-byte v12, v10, v12

    .line 860
    and-int/lit16 v12, v12, 0xff

    .line 862
    sget-object v13, Lo/Hb;->a:[B

    .line 864
    shl-int/lit8 v8, v8, 0x1

    .line 866
    xor-int/2addr v8, v12

    .line 867
    and-int/lit16 v8, v8, 0xff

    .line 869
    aget-byte v8, v13, v8

    .line 871
    and-int/lit16 v8, v8, 0xff

    .line 873
    add-int/lit8 v1, v1, 0x1

    .line 875
    goto :goto_17

    .line 876
    :cond_28
    int-to-byte v1, v8

    .line 877
    const/4 v8, 0x1

    .line 878
    aput-byte v1, v10, v8

    .line 880
    :goto_18
    if-nez v10, :cond_29

    .line 882
    const-string v0, "encode"

    .line 884
    invoke-static {v0}, Lo/Hb;->l(Ljava/lang/String;)V

    .line 887
    sget-object v0, Lo/V6;->a:Lo/V6;

    .line 889
    return-object v0

    .line 890
    :cond_29
    sput-wide v2, Lo/Hb;->d:J

    .line 892
    const/4 v1, 0x0

    .line 893
    sput-boolean v1, Lo/Hb;->h:Z

    .line 895
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 898
    move-result v2

    .line 899
    xor-int/2addr v2, v8

    .line 900
    sput-boolean v2, Lo/Hb;->i:Z

    .line 902
    sget v2, Lo/Hb;->k:I

    .line 904
    add-int/2addr v2, v8

    .line 905
    sput v2, Lo/Hb;->k:I

    .line 907
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 910
    move-result v2

    .line 911
    if-eqz v2, :cond_2a

    .line 913
    const-string v2, "clear"

    .line 915
    goto :goto_19

    .line 916
    :cond_2a
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 919
    move-result v2

    .line 920
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 923
    move-result v3

    .line 924
    new-instance v4, Ljava/lang/StringBuilder;

    .line 926
    const-string v8, "n="

    .line 928
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 931
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 934
    const-string v2, "/uniq="

    .line 936
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 939
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 942
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 945
    move-result-object v2

    .line 946
    :goto_19
    sget-object v3, Lo/Hb;->e:Ljava/lang/String;

    .line 948
    invoke-static {v2, v3}, Lo/x9;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 951
    move-result v3

    .line 952
    if-eqz v3, :cond_2b

    .line 954
    sget v3, Lo/Hb;->k:I

    .line 956
    const/4 v4, 0x5

    .line 957
    if-gt v3, v4, :cond_2e

    .line 959
    :cond_2b
    sput-object v2, Lo/Hb;->e:Ljava/lang/String;

    .line 961
    const-string v3, "ffrt-moco"

    .line 963
    sget-object v4, Lo/Tg;->a:Lo/Tg;

    .line 965
    invoke-static {}, Lo/Tg;->p()Ljava/lang/String;

    .line 968
    move-result-object v8

    .line 969
    const/16 v9, 0x10

    .line 971
    invoke-static {v9}, Lo/L1;->j(I)V

    .line 974
    invoke-static {v5, v9}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 977
    move-result-object v5

    .line 978
    const-string v9, "toString(...)"

    .line 980
    invoke-static {v5, v9}, Lo/x9;->n(Ljava/lang/Object;Ljava/lang/String;)V

    .line 983
    invoke-virtual {v4}, Lo/Tg;->v()Ljava/lang/String;

    .line 986
    move-result-object v4

    .line 987
    sget-object v9, Lo/Hb;->o:Ljava/lang/Object;

    .line 989
    monitor-enter v9

    .line 990
    :try_start_3
    sget-object v11, Lo/Hb;->m:Ljava/util/LinkedHashSet;

    .line 992
    invoke-virtual {v11}, Ljava/util/AbstractCollection;->size()I

    .line 995
    move-result v11

    .line 996
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 999
    move-result-object v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1000
    monitor-exit v9

    .line 1001
    move-object/from16 v9, v29

    .line 1003
    array-length v9, v9

    .line 1004
    array-length v7, v7

    .line 1005
    move-object/from16 v12, v26

    .line 1007
    const/4 v13, 0x4

    .line 1008
    invoke-static {v12, v13}, Lo/Hb;->b([BI)Ljava/lang/String;

    .line 1011
    move-result-object v12

    .line 1012
    const-string v13, ""

    .line 1014
    const-string v14, ""

    .line 1016
    new-instance v15, Ljava/lang/StringBuilder;

    .line 1018
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 1021
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 1024
    array-length v1, v6

    .line 1025
    move-object/from16 p0, v3

    .line 1027
    const/4 v3, 0x0

    .line 1028
    const/16 v16, 0x0

    .line 1030
    :goto_1a
    if-ge v3, v1, :cond_2d

    .line 1032
    aget v18, v6, v3

    .line 1034
    move/from16 v19, v1

    .line 1036
    move-object/from16 v17, v6

    .line 1038
    const/4 v1, 0x1

    .line 1039
    add-int/lit8 v6, v16, 0x1

    .line 1041
    if-le v6, v1, :cond_2c

    .line 1043
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 1046
    :cond_2c
    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1049
    move-result-object v1

    .line 1050
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 1053
    add-int/lit8 v3, v3, 0x1

    .line 1055
    move/from16 v16, v6

    .line 1057
    move-object/from16 v6, v17

    .line 1059
    move/from16 v1, v19

    .line 1061
    goto :goto_1a

    .line 1062
    :cond_2d
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 1065
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1068
    move-result-object v1

    .line 1069
    const/16 v3, 0x8

    .line 1071
    invoke-static {v10, v3}, Lo/Hb;->b([BI)Ljava/lang/String;

    .line 1074
    move-result-object v3

    .line 1075
    array-length v6, v10

    .line 1076
    new-instance v13, Ljava/lang/StringBuilder;

    .line 1078
    const-string v14, "inject "

    .line 1080
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1083
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1086
    const-string v2, " owner="

    .line 1088
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1091
    move-wide/from16 v14, v20

    .line 1093
    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1096
    const-string v2, " self="

    .line 1098
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1101
    move-wide/from16 v14, v23

    .line 1103
    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1106
    const-string v2, " perm="

    .line 1108
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1111
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1114
    const-string v2, " xor=0x"

    .line 1116
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1119
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1122
    const-string v2, " mk="

    .line 1124
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1127
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1130
    const-string v0, " ring="

    .line 1132
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1135
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1138
    const-string v0, " entities="

    .line 1140
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1143
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1146
    const-string v0, " plain="

    .line 1148
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1151
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1154
    const-string v0, " cipher="

    .line 1156
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1159
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1162
    const-string v0, " key="

    .line 1164
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1167
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1170
    const-string v0, " "

    .line 1172
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1175
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1178
    const-string v0, ":"

    .line 1180
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1183
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1186
    const-string v0, "/"

    .line 1188
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1191
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1194
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1197
    move-result-object v0

    .line 1198
    move-object/from16 v1, p0

    .line 1200
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    :cond_2e
    invoke-static {v10}, Lo/L1;->H(Ljava/lang/Object;)Ljava/util/List;

    .line 1206
    move-result-object v0

    .line 1207
    return-object v0

    .line 1208
    :catchall_2
    move-exception v0

    .line 1209
    monitor-exit v9

    .line 1210
    throw v0

    .line 1211
    :goto_1b
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1212
    throw v0

    .line 1213
    :cond_2f
    const-string v0, "noorder"

    .line 1215
    invoke-static {v0}, Lo/Hb;->l(Ljava/lang/String;)V

    .line 1218
    sget-object v0, Lo/V6;->a:Lo/V6;

    .line 1220
    return-object v0

    .line 1221
    :cond_30
    const-string v0, "noxor"

    .line 1223
    invoke-static {v0}, Lo/Hb;->l(Ljava/lang/String;)V

    .line 1226
    sget-object v0, Lo/V6;->a:Lo/V6;

    .line 1228
    return-object v0
.end method
