.class public final Lcom/frostwire/jlibtorrent/Sha1Hash;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/frostwire/jlibtorrent/Sha1Hash;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public final c:Lcom/frostwire/jlibtorrent/swig/sha1_hash;


# direct methods
.method public constructor <init>(Lcom/frostwire/jlibtorrent/swig/sha1_hash;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/frostwire/jlibtorrent/Sha1Hash;->c:Lcom/frostwire/jlibtorrent/swig/sha1_hash;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance v0, Lcom/frostwire/jlibtorrent/Sha1Hash;

    .line 2
    .line 3
    new-instance v1, Lcom/frostwire/jlibtorrent/swig/sha1_hash;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/frostwire/jlibtorrent/Sha1Hash;->c:Lcom/frostwire/jlibtorrent/swig/sha1_hash;

    .line 6
    .line 7
    iget-wide v3, v2, Lcom/frostwire/jlibtorrent/swig/sha1_hash;->a:J

    .line 8
    .line 9
    invoke-static {v3, v4, v2}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->new_sha1_hash__SWIG_1(JLcom/frostwire/jlibtorrent/swig/sha1_hash;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    const/4 v4, 0x1

    .line 14
    invoke-direct {v1, v2, v3, v4}, Lcom/frostwire/jlibtorrent/swig/sha1_hash;-><init>(JZ)V

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/Sha1Hash;-><init>(Lcom/frostwire/jlibtorrent/swig/sha1_hash;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 6

    .line 1
    check-cast p1, Lcom/frostwire/jlibtorrent/Sha1Hash;

    .line 2
    .line 3
    iget-object v5, p1, Lcom/frostwire/jlibtorrent/Sha1Hash;->c:Lcom/frostwire/jlibtorrent/swig/sha1_hash;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/frostwire/jlibtorrent/Sha1Hash;->c:Lcom/frostwire/jlibtorrent/swig/sha1_hash;

    .line 6
    .line 7
    invoke-static {v2}, Lcom/frostwire/jlibtorrent/swig/sha1_hash;->a(Lcom/frostwire/jlibtorrent/swig/sha1_hash;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-static {v5}, Lcom/frostwire/jlibtorrent/swig/sha1_hash;->a(Lcom/frostwire/jlibtorrent/swig/sha1_hash;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v3

    .line 15
    invoke-static/range {v0 .. v5}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->sha1_hash_compare(JLcom/frostwire/jlibtorrent/swig/sha1_hash;JLcom/frostwire/jlibtorrent/swig/sha1_hash;)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    instance-of v0, p1, Lcom/frostwire/jlibtorrent/Sha1Hash;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    check-cast p1, Lcom/frostwire/jlibtorrent/Sha1Hash;

    .line 8
    .line 9
    iget-object v5, p1, Lcom/frostwire/jlibtorrent/Sha1Hash;->c:Lcom/frostwire/jlibtorrent/swig/sha1_hash;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/frostwire/jlibtorrent/Sha1Hash;->c:Lcom/frostwire/jlibtorrent/swig/sha1_hash;

    .line 12
    .line 13
    iget-wide v0, v2, Lcom/frostwire/jlibtorrent/swig/sha1_hash;->a:J

    .line 14
    .line 15
    iget-wide v3, v5, Lcom/frostwire/jlibtorrent/swig/sha1_hash;->a:J

    .line 16
    .line 17
    invoke-static/range {v0 .. v5}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->sha1_hash_op_eq(JLcom/frostwire/jlibtorrent/swig/sha1_hash;JLcom/frostwire/jlibtorrent/swig/sha1_hash;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/frostwire/jlibtorrent/Sha1Hash;->c:Lcom/frostwire/jlibtorrent/swig/sha1_hash;

    .line 2
    .line 3
    iget-wide v1, v0, Lcom/frostwire/jlibtorrent/swig/sha1_hash;->a:J

    .line 4
    .line 5
    invoke-static {v1, v2, v0}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->sha1_hash_hash_code(JLcom/frostwire/jlibtorrent/swig/sha1_hash;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/frostwire/jlibtorrent/Sha1Hash;->c:Lcom/frostwire/jlibtorrent/swig/sha1_hash;

    .line 2
    .line 3
    iget-wide v1, v0, Lcom/frostwire/jlibtorrent/swig/sha1_hash;->a:J

    .line 4
    .line 5
    invoke-static {v1, v2, v0}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->sha1_hash_to_hex(JLcom/frostwire/jlibtorrent/swig/sha1_hash;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
