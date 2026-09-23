.class public abstract Lcom/frostwire/jlibtorrent/alerts/AbstractAlert;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/frostwire/jlibtorrent/alerts/Alert;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/frostwire/jlibtorrent/swig/alert;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/frostwire/jlibtorrent/alerts/Alert<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/frostwire/jlibtorrent/swig/alert;

.field public final b:Lcom/frostwire/jlibtorrent/alerts/AlertType;


# direct methods
.method public constructor <init>(Lcom/frostwire/jlibtorrent/swig/alert;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/frostwire/jlibtorrent/alerts/AbstractAlert;->a:Lcom/frostwire/jlibtorrent/swig/alert;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/frostwire/jlibtorrent/swig/alert;->c()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    sget-object v0, Lcom/frostwire/jlibtorrent/alerts/AlertType;->w:[Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 11
    .line 12
    aget-object p1, v0, p1

    .line 13
    .line 14
    iput-object p1, p0, Lcom/frostwire/jlibtorrent/alerts/AbstractAlert;->b:Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/frostwire/jlibtorrent/alerts/AbstractAlert;->b:Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, " - "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lcom/frostwire/jlibtorrent/alerts/AbstractAlert;->a:Lcom/frostwire/jlibtorrent/swig/alert;

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/frostwire/jlibtorrent/swig/alert;->d()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/frostwire/jlibtorrent/swig/alert;->b()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    return-object v0
.end method

.method public final type()Lcom/frostwire/jlibtorrent/alerts/AlertType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/frostwire/jlibtorrent/alerts/AbstractAlert;->b:Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 2
    .line 3
    return-object v0
.end method
