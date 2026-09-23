.class public final Lcom/frostwire/jlibtorrent/SettingsPack;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/frostwire/jlibtorrent/swig/settings_pack;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack;

    .line 2
    .line 3
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->new_settings_pack__SWIG_0()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-direct {v0, v1, v2, v3}, Lcom/frostwire/jlibtorrent/swig/settings_pack;-><init>(JZ)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/frostwire/jlibtorrent/SettingsPack;->a:Lcom/frostwire/jlibtorrent/swig/settings_pack;

    .line 15
    .line 16
    return-void
.end method
