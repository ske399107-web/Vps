.class public Lio/github/muntashirakon/crypto/spake2/Spake2Context;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/security/auth/Destroyable;


# instance fields
.field public final a:J

.field public final b:[B

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "spake2"

    .line 3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public constructor <init>(I[B[B)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/16 v0, 0x20

    .line 6
    new-array v0, v0, [B

    .line 8
    iput-object v0, p0, Lio/github/muntashirakon/crypto/spake2/Spake2Context;->b:[B

    .line 10
    invoke-static {p1}, Lo/Ve;->C(I)I

    .line 13
    move-result p1

    .line 14
    invoke-static {p1, p2, p3}, Lio/github/muntashirakon/crypto/spake2/Spake2Context;->allocNewContext(I[B[B)J

    .line 17
    move-result-wide p1

    .line 18
    iput-wide p1, p0, Lio/github/muntashirakon/crypto/spake2/Spake2Context;->a:J

    .line 20
    const-wide/16 v0, 0x0

    .line 22
    cmp-long p1, p1, v0

    .line 24
    if-eqz p1, :cond_0

    .line 26
    return-void

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 29
    const-string p2, "Could not allocate native context"

    .line 31
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 34
    throw p1
.end method

.method private static native allocNewContext(I[B[B)J
.end method

.method private static native destroy(J)V
.end method

.method private static native generateMessage(J[B)[B
.end method

.method private static native processMessage(J[B)[B
.end method


# virtual methods
.method public final a([B)[B
    .locals 3

    .line 1
    iget-boolean v0, p0, Lio/github/muntashirakon/crypto/spake2/Spake2Context;->c:Z

    .line 3
    if-nez v0, :cond_1

    .line 5
    iget-wide v0, p0, Lio/github/muntashirakon/crypto/spake2/Spake2Context;->a:J

    .line 7
    invoke-static {v0, v1, p1}, Lio/github/muntashirakon/crypto/spake2/Spake2Context;->generateMessage(J[B)[B

    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 13
    iget-object v0, p0, Lio/github/muntashirakon/crypto/spake2/Spake2Context;->b:[B

    .line 15
    const/16 v1, 0x20

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    return-object p1

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 24
    const-string v0, "Generated empty message"

    .line 26
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    throw p1

    .line 30
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 32
    const-string v0, "The context was destroyed."

    .line 34
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    throw p1
.end method

.method public final b([B)[B
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/github/muntashirakon/crypto/spake2/Spake2Context;->c:Z

    .line 3
    if-nez v0, :cond_1

    .line 5
    iget-wide v0, p0, Lio/github/muntashirakon/crypto/spake2/Spake2Context;->a:J

    .line 7
    invoke-static {v0, v1, p1}, Lio/github/muntashirakon/crypto/spake2/Spake2Context;->processMessage(J[B)[B

    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 13
    return-object p1

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 16
    const-string v0, "No key was returned"

    .line 18
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    throw p1

    .line 22
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 24
    const-string v0, "The context was destroyed."

    .line 26
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    throw p1
.end method

.method public final destroy()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/github/muntashirakon/crypto/spake2/Spake2Context;->c:Z

    .line 2
    iget-wide v0, p0, Lio/github/muntashirakon/crypto/spake2/Spake2Context;->a:J

    invoke-static {v0, v1}, Lio/github/muntashirakon/crypto/spake2/Spake2Context;->destroy(J)V

    return-void
.end method

.method public final isDestroyed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/github/muntashirakon/crypto/spake2/Spake2Context;->c:Z

    .line 3
    return v0
.end method
