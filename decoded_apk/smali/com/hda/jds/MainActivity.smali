.class public Lcom/hda/jds/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hda/jds/MainActivity$100000001;,
        Lcom/hda/jds/MainActivity$100000002;,
        Lcom/hda/jds/MainActivity$100000000;
    }
.end annotation


# static fields
.field private static final a:[B

.field private static final b:[B

.field private static final c:[B

.field private static checkRunnable:Ljava/lang/Runnable;

.field private static context:Landroid/content/Context;

.field private static final d:[B

.field private static deviceId:Ljava/lang/String;

.field private static final e:[B

.field private static final f:[B

.field private static final g:[B

.field private static final h:[B

.field private static final i:[B

.field private static installReported:Z

.field private static final j:[B

.field private static scheduler:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static final constructor <clinit>()V
    .locals 7

    const/16 v2, 0x9

    new-array v2, v2, [B

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const/16 v5, 0x45

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    const/16 v5, 0x78

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x2

    const/16 v5, 0x70

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x3

    const/16 v5, 0x69

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x4

    const/16 v5, 0x72

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x5

    const/16 v5, 0x79

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x6

    const/16 v5, 0x47

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x7

    const/16 v5, 0x6f

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x8

    const/16 v5, 0x64

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    sput-object v2, Lcom/hda/jds/MainActivity;->a:[B

    const/16 v2, 0x27

    new-array v2, v2, [B

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const/16 v5, 0x68

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    const/16 v5, 0x74

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x2

    const/16 v5, 0x74

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x3

    const/16 v5, 0x70

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x4

    const/16 v5, 0x73

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x5

    const/16 v5, 0x3a

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x6

    const/16 v5, 0x2f

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x7

    const/16 v5, 0x2f

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x8

    const/16 v5, 0x68

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x9

    const/16 v5, 0x64

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0xa

    const/16 v5, 0x68

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0xb

    const/16 v5, 0x2e

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0xc

    const/16 v5, 0x6d

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0xd

    const/16 v5, 0x79

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0xe

    const/16 v5, 0x76

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0xf

    const/16 v5, 0x69

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x10

    const/16 v5, 0x70

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x11

    const/16 v5, 0x73

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x12

    const/16 v5, 0x69

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x13

    const/16 v5, 0x74

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x14

    const/16 v5, 0x65

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x15

    const/16 v5, 0x2e

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x16

    const/16 v5, 0x66

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x17

    const/16 v5, 0x75

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x18

    const/16 v5, 0x6e

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x19

    const/16 v5, 0x2f

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x1a

    const/16 v5, 0x61

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x1b

    const/16 v5, 0x70

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x1c

    const/16 v5, 0x69

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x1d

    const/16 v5, 0x2f

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x1e

    const/16 v5, 0x63

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x1f

    const/16 v5, 0x68

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x20

    const/16 v5, 0x65

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x21

    const/16 v5, 0x63

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x22

    const/16 v5, 0x6b

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x23

    const/16 v5, 0x2e

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x24

    const/16 v5, 0x70

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x25

    const/16 v5, 0x68

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x26

    const/16 v5, 0x70

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    sput-object v2, Lcom/hda/jds/MainActivity;->b:[B

    const/16 v2, 0x29

    new-array v2, v2, [B

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const/16 v5, 0x68

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    const/16 v5, 0x74

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x2

    const/16 v5, 0x74

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x3

    const/16 v5, 0x70

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x4

    const/16 v5, 0x73

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x5

    const/16 v5, 0x3a

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x6

    const/16 v5, 0x2f

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x7

    const/16 v5, 0x2f

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x8

    const/16 v5, 0x68

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x9

    const/16 v5, 0x64

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0xa

    const/16 v5, 0x68

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0xb

    const/16 v5, 0x2e

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0xc

    const/16 v5, 0x6d

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0xd

    const/16 v5, 0x79

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0xe

    const/16 v5, 0x76

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0xf

    const/16 v5, 0x69

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x10

    const/16 v5, 0x70

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x11

    const/16 v5, 0x73

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x12

    const/16 v5, 0x69

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x13

    const/16 v5, 0x74

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x14

    const/16 v5, 0x65

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x15

    const/16 v5, 0x2e

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x16

    const/16 v5, 0x66

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x17

    const/16 v5, 0x75

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x18

    const/16 v5, 0x6e

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x19

    const/16 v5, 0x2f

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x1a

    const/16 v5, 0x61

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x1b

    const/16 v5, 0x70

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x1c

    const/16 v5, 0x69

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x1d

    const/16 v5, 0x2f

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x1e

    const/16 v5, 0x69

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x1f

    const/16 v5, 0x6e

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x20

    const/16 v5, 0x73

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x21

    const/16 v5, 0x74

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x22

    const/16 v5, 0x61

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x23

    const/16 v5, 0x6c

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x24

    const/16 v5, 0x6c

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x25

    const/16 v5, 0x2e

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x26

    const/16 v5, 0x70

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x27

    const/16 v5, 0x68

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x28

    const/16 v5, 0x70

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    sput-object v2, Lcom/hda/jds/MainActivity;->c:[B

    const/16 v2, 0x27

    new-array v2, v2, [B

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const/16 v5, 0x68

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    const/16 v5, 0x74

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x2

    const/16 v5, 0x74

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x3

    const/16 v5, 0x70

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x4

    const/16 v5, 0x73

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x5

    const/16 v5, 0x3a

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x6

    const/16 v5, 0x2f

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x7

    const/16 v5, 0x2f

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x8

    const/16 v5, 0x68

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x9

    const/16 v5, 0x64

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0xa

    const/16 v5, 0x68

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0xb

    const/16 v5, 0x2e

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0xc

    const/16 v5, 0x6d

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0xd

    const/16 v5, 0x79

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0xe

    const/16 v5, 0x76

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0xf

    const/16 v5, 0x69

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x10

    const/16 v5, 0x70

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x11

    const/16 v5, 0x73

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x12

    const/16 v5, 0x69

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x13

    const/16 v5, 0x74

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x14

    const/16 v5, 0x65

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x15

    const/16 v5, 0x2e

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x16

    const/16 v5, 0x66

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x17

    const/16 v5, 0x75

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x18

    const/16 v5, 0x6e

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x19

    const/16 v5, 0x2f

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x1a

    const/16 v5, 0x61

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x1b

    const/16 v5, 0x70

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x1c

    const/16 v5, 0x69

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x1d

    const/16 v5, 0x2f

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x1e

    const/16 v5, 0x73

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x1f

    const/16 v5, 0x74

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x20

    const/16 v5, 0x61

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x21

    const/16 v5, 0x74

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x22

    const/16 v5, 0x73

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x23

    const/16 v5, 0x2e

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x24

    const/16 v5, 0x70

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x25

    const/16 v5, 0x68

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x26

    const/16 v5, 0x70

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    sput-object v2, Lcom/hda/jds/MainActivity;->d:[B

    const/4 v2, 0x7

    new-array v2, v2, [B

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const/16 v5, 0x64

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    const/16 v5, 0x65

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x2

    const/16 v5, 0x76

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x3

    const/16 v5, 0x69

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x4

    const/16 v5, 0x63

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x5

    const/16 v5, 0x65

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x6

    const/16 v5, 0x5f

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    sput-object v2, Lcom/hda/jds/MainActivity;->e:[B

    const/16 v2, 0xb

    new-array v2, v2, [B

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const/16 v5, 0x3f

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    const/16 v5, 0x64

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x2

    const/16 v5, 0x65

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x3

    const/16 v5, 0x76

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x4

    const/16 v5, 0x69

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x5

    const/16 v5, 0x63

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x6

    const/16 v5, 0x65

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x7

    const/16 v5, 0x5f

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x8

    const/16 v5, 0x69

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x9

    const/16 v5, 0x64

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0xa

    const/16 v5, 0x3d

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    sput-object v2, Lcom/hda/jds/MainActivity;->f:[B

    const/16 v2, 0xc

    new-array v2, v2, [B

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const/16 v5, 0x26

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    const/16 v5, 0x76

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x2

    const/16 v5, 0x65

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x3

    const/16 v5, 0x72

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x4

    const/16 v5, 0x73

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x5

    const/16 v5, 0x69

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x6

    const/16 v5, 0x6f

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x7

    const/16 v5, 0x6e

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x8

    const/16 v5, 0x3d

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x9

    const/16 v5, 0x31

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0xa

    const/16 v5, 0x2e

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0xb

    const/16 v5, 0x30

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    sput-object v2, Lcom/hda/jds/MainActivity;->g:[B

    const/16 v2, 0x16

    new-array v2, v2, [B

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const/16 v5, 0x22

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    const/16 v5, 0x73

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x2

    const/16 v5, 0x68

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x3

    const/16 v5, 0x6f

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x4

    const/16 v5, 0x75

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x5

    const/16 v5, 0x6c

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x6

    const/16 v5, 0x64

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x7

    const/16 v5, 0x5f

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x8

    const/16 v5, 0x72

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x9

    const/16 v5, 0x65

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0xa

    const/16 v5, 0x64

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0xb

    const/16 v5, 0x69

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0xc

    const/16 v5, 0x72

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0xd

    const/16 v5, 0x65

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0xe

    const/16 v5, 0x63

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0xf

    const/16 v5, 0x74

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x10

    const/16 v5, 0x22

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x11

    const/16 v5, 0x3a

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x12

    const/16 v5, 0x74

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x13

    const/16 v5, 0x72

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x14

    const/16 v5, 0x75

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x15

    const/16 v5, 0x65

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    sput-object v2, Lcom/hda/jds/MainActivity;->h:[B

    const/16 v2, 0x10

    new-array v2, v2, [B

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const/16 v5, 0x22

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    const/16 v5, 0x72

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x2

    const/16 v5, 0x65

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x3

    const/16 v5, 0x64

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x4

    const/16 v5, 0x69

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x5

    const/16 v5, 0x72

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x6

    const/16 v5, 0x65

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x7

    const/16 v5, 0x63

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x8

    const/16 v5, 0x74

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x9

    const/16 v5, 0x5f

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0xa

    const/16 v5, 0x75

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0xb

    const/16 v5, 0x72

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0xc

    const/16 v5, 0x6c

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0xd

    const/16 v5, 0x22

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0xe

    const/16 v5, 0x3a

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0xf

    const/16 v5, 0x22

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    sput-object v2, Lcom/hda/jds/MainActivity;->i:[B

    const/16 v2, 0x16

    new-array v2, v2, [B

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const/16 v5, 0x68

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    const/16 v5, 0x74

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x2

    const/16 v5, 0x74

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x3

    const/16 v5, 0x70

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x4

    const/16 v5, 0x73

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x5

    const/16 v5, 0x3a

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x6

    const/16 v5, 0x2f

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x7

    const/16 v5, 0x2f

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x8

    const/16 v5, 0x77

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x9

    const/16 v5, 0x77

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0xa

    const/16 v5, 0x77

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0xb

    const/16 v5, 0x2e

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0xc

    const/16 v5, 0x67

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0xd

    const/16 v5, 0x6f

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0xe

    const/16 v5, 0x6f

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0xf

    const/16 v5, 0x67

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x10

    const/16 v5, 0x6c

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x11

    const/16 v5, 0x65

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x12

    const/16 v5, 0x2e

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x13

    const/16 v5, 0x63

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x14

    const/16 v5, 0x6f

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x15

    const/16 v5, 0x6d

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    sput-object v2, Lcom/hda/jds/MainActivity;->j:[B

    const/4 v2, 0x0

    sput-boolean v2, Lcom/hda/jds/MainActivity;->installReported:Z

    new-instance v2, Lcom/hda/jds/MainActivity$100000000;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Lcom/hda/jds/MainActivity$100000000;-><init>()V

    sput-object v2, Lcom/hda/jds/MainActivity;->checkRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 225
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static Start(Landroid/content/Context;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sput-object v3, Lcom/hda/jds/MainActivity;->context:Landroid/content/Context;

    .line 73
    new-instance v3, Ljava/lang/StringBuffer;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v4, Lcom/hda/jds/MainActivity;->e:[B

    invoke-static {v4}, Lcom/hda/jds/MainActivity;->d([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/hda/jds/MainActivity;->deviceId:Ljava/lang/String;

    .line 75
    sget-object v3, Lcom/hda/jds/MainActivity;->a:[B

    invoke-static {v3}, Lcom/hda/jds/MainActivity;->d([B)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v6, Lcom/hda/jds/MainActivity;->a:[B

    invoke-static {v6}, Lcom/hda/jds/MainActivity;->d([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " Started - Device: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget-object v5, Lcom/hda/jds/MainActivity;->deviceId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 76
    invoke-static {}, Lcom/hda/jds/MainActivity;->reportInstall()V

    .line 77
    invoke-static {}, Lcom/hda/jds/MainActivity;->startBackgroundCheck()V

    return-void
.end method

.method static synthetic access$1000014([B)Ljava/lang/String;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    invoke-static {v3}, Lcom/hda/jds/MainActivity;->d([B)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$1000022()V
    .locals 0

    invoke-static {}, Lcom/hda/jds/MainActivity;->checkExpiry()V

    return-void
.end method

.method static synthetic access$L1000000()[B
    .locals 3

    sget-object v2, Lcom/hda/jds/MainActivity;->a:[B

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$L1000002()[B
    .locals 3

    sget-object v2, Lcom/hda/jds/MainActivity;->c:[B

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$L1000003()[B
    .locals 3

    sget-object v2, Lcom/hda/jds/MainActivity;->d:[B

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$L1000005()[B
    .locals 3

    sget-object v2, Lcom/hda/jds/MainActivity;->f:[B

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$L1000006()[B
    .locals 3

    sget-object v2, Lcom/hda/jds/MainActivity;->g:[B

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$L1000012()Ljava/lang/String;
    .locals 3

    sget-object v2, Lcom/hda/jds/MainActivity;->deviceId:Ljava/lang/String;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$L1000013()Z
    .locals 3

    sget-boolean v2, Lcom/hda/jds/MainActivity;->installReported:Z

    move v0, v2

    return v0
.end method

.method static synthetic access$S1000000([B)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    sput-object v3, Lcom/hda/jds/MainActivity;->a:[B

    return-void
.end method

.method static synthetic access$S1000002([B)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    sput-object v3, Lcom/hda/jds/MainActivity;->c:[B

    return-void
.end method

.method static synthetic access$S1000003([B)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    sput-object v3, Lcom/hda/jds/MainActivity;->d:[B

    return-void
.end method

.method static synthetic access$S1000005([B)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    sput-object v3, Lcom/hda/jds/MainActivity;->f:[B

    return-void
.end method

.method static synthetic access$S1000006([B)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    sput-object v3, Lcom/hda/jds/MainActivity;->g:[B

    return-void
.end method

.method static synthetic access$S1000012(Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    sput-object v3, Lcom/hda/jds/MainActivity;->deviceId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$S1000013(Z)V
    .locals 4

    move v0, p0

    move v3, v0

    sput-boolean v3, Lcom/hda/jds/MainActivity;->installReported:Z

    return-void
.end method

.method private static checkExpiry()V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 139
    sget-object v10, Lcom/hda/jds/MainActivity;->a:[B

    invoke-static {v10}, Lcom/hda/jds/MainActivity;->d([B)Ljava/lang/String;

    move-result-object v10

    const-string v11, "Checking expiry status..."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 142
    :try_start_0
    new-instance v10, Ljava/net/URL;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    sget-object v12, Lcom/hda/jds/MainActivity;->b:[B

    invoke-static {v12}, Lcom/hda/jds/MainActivity;->d([B)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v1, v10

    .line 143
    move-object v10, v1

    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    check-cast v10, Ljava/net/HttpURLConnection;

    move-object v2, v10

    .line 144
    move-object v10, v2

    const-string v11, "GET"

    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 145
    move-object v10, v2

    const/16 v11, 0x2710

    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 146
    move-object v10, v2

    const/16 v11, 0x2710

    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 148
    move-object v10, v2

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    move v3, v10

    .line 149
    move v10, v3

    const/16 v11, 0xc8

    if-ne v10, v11, :cond_2

    .line 150
    move-object v10, v2

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    move-object v4, v10

    .line 151
    new-instance v10, Ljava/io/BufferedReader;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    new-instance v12, Ljava/io/InputStreamReader;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    move-object v14, v4

    invoke-direct {v13, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v11, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v5, v10

    .line 152
    new-instance v10, Ljava/lang/StringBuilder;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v10

    .line 155
    :goto_0
    move-object v10, v5

    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v7, v11

    if-nez v10, :cond_0

    .line 159
    move-object v10, v5

    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 160
    sget-object v10, Lcom/hda/jds/MainActivity;->a:[B

    invoke-static {v10}, Lcom/hda/jds/MainActivity;->d([B)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuffer;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "API Response: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    move-object v12, v6

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 162
    move-object v10, v6

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/hda/jds/MainActivity;->extractRedirectUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    .line 164
    move-object v10, v6

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/hda/jds/MainActivity;->h:[B

    invoke-static {v11}, Lcom/hda/jds/MainActivity;->d([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v10, v8

    if-eqz v10, :cond_1

    .line 165
    sget-object v10, Lcom/hda/jds/MainActivity;->a:[B

    invoke-static {v10}, Lcom/hda/jds/MainActivity;->d([B)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuffer;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "REDIRECT TRIGGERED to: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    move-object v12, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 166
    invoke-static {}, Lcom/hda/jds/MainActivity;->updateStats()V

    .line 167
    move-object v10, v8

    invoke-static {v10}, Lcom/hda/jds/MainActivity;->triggerRedirect(Ljava/lang/String;)V

    .line 176
    :goto_1
    move-object v10, v2

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 179
    :goto_2
    return-void

    .line 156
    :cond_0
    move-object v10, v6

    move-object v11, v7

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    goto/16 :goto_0

    .line 169
    :cond_1
    invoke-static {}, Lcom/hda/jds/MainActivity;->updateStats()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 176
    :catch_0
    move-exception v10

    move-object v1, v10

    .line 179
    sget-object v10, Lcom/hda/jds/MainActivity;->a:[B

    invoke-static {v10}, Lcom/hda/jds/MainActivity;->d([B)Ljava/lang/String;

    move-result-object v10

    const-string v11, "API Check Failed"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    goto :goto_2

    .line 173
    :cond_2
    :try_start_1
    sget-object v10, Lcom/hda/jds/MainActivity;->a:[B

    invoke-static {v10}, Lcom/hda/jds/MainActivity;->d([B)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuffer;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "HTTP Error: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    move v12, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v10

    goto :goto_1
.end method

.method private static d([B)Ljava/lang/String;
    .locals 7

    .prologue
    .line 53
    move-object v0, p0

    new-instance v3, Ljava/lang/String;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    move-object v0, v3

    return-object v0
.end method

.method private static extractRedirectUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 185
    move-object v0, p0

    move-object v5, v0

    :try_start_0
    sget-object v6, Lcom/hda/jds/MainActivity;->i:[B

    invoke-static {v6}, Lcom/hda/jds/MainActivity;->d([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    move v2, v5

    .line 186
    move v5, v2

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 187
    move v5, v2

    sget-object v6, Lcom/hda/jds/MainActivity;->i:[B

    invoke-static {v6}, Lcom/hda/jds/MainActivity;->d([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    move v2, v5

    .line 188
    move-object v5, v0

    const-string v6, "\""

    move v7, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    move v3, v5

    .line 189
    move v5, v3

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 190
    move-object v5, v0

    move v6, v2

    move v7, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v0, v5

    .line 196
    :goto_0
    return-object v0

    :cond_0
    :goto_1
    sget-object v5, Lcom/hda/jds/MainActivity;->j:[B

    invoke-static {v5}, Lcom/hda/jds/MainActivity;->d([B)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 190
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 194
    sget-object v5, Lcom/hda/jds/MainActivity;->a:[B

    invoke-static {v5}, Lcom/hda/jds/MainActivity;->d([B)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Error extracting redirect URL"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_1
.end method

.method private static reportInstall()V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 81
    sget-boolean v2, Lcom/hda/jds/MainActivity;->installReported:Z

    if-eqz v2, :cond_0

    .line 83
    :goto_0
    return-void

    :cond_0
    new-instance v2, Ljava/lang/Thread;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Lcom/hda/jds/MainActivity$100000001;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lcom/hda/jds/MainActivity$100000001;-><init>()V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private static startBackgroundCheck()V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 128
    sget-object v2, Lcom/hda/jds/MainActivity;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/hda/jds/MainActivity;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v2

    if-nez v2, :cond_0

    .line 129
    sget-object v2, Lcom/hda/jds/MainActivity;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 132
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    sput-object v2, Lcom/hda/jds/MainActivity;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 133
    sget-object v2, Lcom/hda/jds/MainActivity;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v3, Lcom/hda/jds/MainActivity;->checkRunnable:Ljava/lang/Runnable;

    const/4 v4, 0x0

    int-to-long v4, v4

    const/4 v6, 0x5

    int-to-long v6, v6

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    .line 135
    sget-object v2, Lcom/hda/jds/MainActivity;->a:[B

    invoke-static {v2}, Lcom/hda/jds/MainActivity;->d([B)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Background checking started"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return-void
.end method

.method public static stop()V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 215
    sget-object v2, Lcom/hda/jds/MainActivity;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v2, :cond_0

    .line 216
    sget-object v2, Lcom/hda/jds/MainActivity;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 217
    sget-object v2, Lcom/hda/jds/MainActivity;->a:[B

    invoke-static {v2}, Lcom/hda/jds/MainActivity;->d([B)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v4, Lcom/hda/jds/MainActivity;->a:[B

    invoke-static {v4}, Lcom/hda/jds/MainActivity;->d([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " stopped"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    :cond_0
    return-void
.end method

.method private static triggerRedirect(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 201
    move-object v0, p0

    :try_start_0
    sget-object v4, Lcom/hda/jds/MainActivity;->a:[B

    invoke-static {v4}, Lcom/hda/jds/MainActivity;->d([B)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuffer;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Opening URL: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 203
    new-instance v4, Landroid/content/Intent;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "android.intent.action.VIEW"

    move-object v7, v0

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v2, v4

    .line 204
    move-object v4, v2

    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v4

    .line 205
    sget-object v4, Lcom/hda/jds/MainActivity;->context:Landroid/content/Context;

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 207
    sget-object v4, Lcom/hda/jds/MainActivity;->a:[B

    invoke-static {v4}, Lcom/hda/jds/MainActivity;->d([B)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuffer;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Redirect successful to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 210
    :goto_0
    return-void

    .line 207
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 210
    sget-object v4, Lcom/hda/jds/MainActivity;->a:[B

    invoke-static {v4}, Lcom/hda/jds/MainActivity;->d([B)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Redirect failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_0
.end method

.method private static updateStats()V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 108
    new-instance v2, Ljava/lang/Thread;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Lcom/hda/jds/MainActivity$100000002;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lcom/hda/jds/MainActivity$100000002;-><init>()V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
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
    .line 66
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    move-object v3, v0

    invoke-static {v3}, Lcom/hda/jds/MainActivity;->Start(Landroid/content/Context;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 223
    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Landroid/app/Activity;->onDestroy()V

    .line 224
    invoke-static {}, Lcom/hda/jds/MainActivity;->stop()V

    return-void
.end method
