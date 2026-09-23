.class public final Lcom/frostwire/jlibtorrent/Address;
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
        "Lcom/frostwire/jlibtorrent/Address;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public final c:Lcom/frostwire/jlibtorrent/swig/address;


# direct methods
.method public constructor <init>(Lcom/frostwire/jlibtorrent/swig/address;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/frostwire/jlibtorrent/Address;->c:Lcom/frostwire/jlibtorrent/swig/address;

    .line 5
    .line 6
    return-void
.end method

.method public static a(Lcom/frostwire/jlibtorrent/swig/address;)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v5, Lcom/frostwire/jlibtorrent/swig/error_code;

    .line 2
    .line 3
    invoke-direct {v5}, Lcom/frostwire/jlibtorrent/swig/error_code;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Lcom/frostwire/jlibtorrent/swig/address;->a:J

    .line 7
    .line 8
    iget-wide v3, v5, Lcom/frostwire/jlibtorrent/swig/error_code;->a:J

    .line 9
    .line 10
    move-object v2, p0

    .line 11
    invoke-static/range {v0 .. v5}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->address_to_string(JLcom/frostwire/jlibtorrent/swig/address;JLcom/frostwire/jlibtorrent/swig/error_code;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    iget-wide v0, v5, Lcom/frostwire/jlibtorrent/swig/error_code;->a:J

    .line 16
    .line 17
    invoke-static {v0, v1, v5}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->error_code_value(JLcom/frostwire/jlibtorrent/swig/error_code;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const-string p0, "<invalid address>"

    .line 24
    .line 25
    :cond_0
    return-object p0
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance v0, Lcom/frostwire/jlibtorrent/Address;

    .line 2
    .line 3
    new-instance v1, Lcom/frostwire/jlibtorrent/swig/address;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/frostwire/jlibtorrent/Address;->c:Lcom/frostwire/jlibtorrent/swig/address;

    .line 6
    .line 7
    iget-wide v3, v2, Lcom/frostwire/jlibtorrent/swig/address;->a:J

    .line 8
    .line 9
    invoke-static {v3, v4, v2}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->new_address__SWIG_1(JLcom/frostwire/jlibtorrent/swig/address;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    invoke-direct {v1, v2, v3}, Lcom/frostwire/jlibtorrent/swig/address;-><init>(J)V

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/Address;-><init>(Lcom/frostwire/jlibtorrent/swig/address;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 6

    .line 1
    check-cast p1, Lcom/frostwire/jlibtorrent/Address;

    .line 2
    .line 3
    iget-object v5, p1, Lcom/frostwire/jlibtorrent/Address;->c:Lcom/frostwire/jlibtorrent/swig/address;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/frostwire/jlibtorrent/Address;->c:Lcom/frostwire/jlibtorrent/swig/address;

    .line 6
    .line 7
    iget-wide v0, v2, Lcom/frostwire/jlibtorrent/swig/address;->a:J

    .line 8
    .line 9
    iget-wide v3, v5, Lcom/frostwire/jlibtorrent/swig/address;->a:J

    .line 10
    .line 11
    invoke-static/range {v0 .. v5}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->address_compare(JLcom/frostwire/jlibtorrent/swig/address;JLcom/frostwire/jlibtorrent/swig/address;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/frostwire/jlibtorrent/Address;->c:Lcom/frostwire/jlibtorrent/swig/address;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/frostwire/jlibtorrent/Address;->a(Lcom/frostwire/jlibtorrent/swig/address;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
