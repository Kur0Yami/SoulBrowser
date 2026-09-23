.class public Lcom/frostwire/jlibtorrent/SessionHandle;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/frostwire/jlibtorrent/swig/session_flags_t;

.field public static final b:Lcom/frostwire/jlibtorrent/swig/save_state_flags_t;

.field public static final c:Lcom/frostwire/jlibtorrent/swig/save_state_flags_t;

.field public static final d:Lcom/frostwire/jlibtorrent/swig/save_state_flags_t;

.field public static final e:Lcom/frostwire/jlibtorrent/swig/remove_flags_t;

.field public static final f:Lcom/frostwire/jlibtorrent/swig/remove_flags_t;

.field public static final g:Lcom/frostwire/jlibtorrent/swig/reopen_network_flags_t;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/frostwire/jlibtorrent/Logger;

    .line 2
    .line 3
    const-class v1, Lcom/frostwire/jlibtorrent/SessionHandle;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/Logger;-><init>(Ljava/util/logging/Logger;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lcom/frostwire/jlibtorrent/swig/session_handle;->h:Lcom/frostwire/jlibtorrent/swig/session_flags_t;

    .line 17
    .line 18
    sput-object v0, Lcom/frostwire/jlibtorrent/SessionHandle;->a:Lcom/frostwire/jlibtorrent/swig/session_flags_t;

    .line 19
    .line 20
    sget-object v0, Lcom/frostwire/jlibtorrent/swig/session_handle;->c:Lcom/frostwire/jlibtorrent/swig/save_state_flags_t;

    .line 21
    .line 22
    sput-object v0, Lcom/frostwire/jlibtorrent/SessionHandle;->b:Lcom/frostwire/jlibtorrent/swig/save_state_flags_t;

    .line 23
    .line 24
    sget-object v0, Lcom/frostwire/jlibtorrent/swig/session_handle;->d:Lcom/frostwire/jlibtorrent/swig/save_state_flags_t;

    .line 25
    .line 26
    sput-object v0, Lcom/frostwire/jlibtorrent/SessionHandle;->c:Lcom/frostwire/jlibtorrent/swig/save_state_flags_t;

    .line 27
    .line 28
    sget-object v0, Lcom/frostwire/jlibtorrent/swig/session_handle;->e:Lcom/frostwire/jlibtorrent/swig/save_state_flags_t;

    .line 29
    .line 30
    sput-object v0, Lcom/frostwire/jlibtorrent/SessionHandle;->d:Lcom/frostwire/jlibtorrent/swig/save_state_flags_t;

    .line 31
    .line 32
    sget-object v0, Lcom/frostwire/jlibtorrent/swig/session_handle;->f:Lcom/frostwire/jlibtorrent/swig/remove_flags_t;

    .line 33
    .line 34
    sput-object v0, Lcom/frostwire/jlibtorrent/SessionHandle;->e:Lcom/frostwire/jlibtorrent/swig/remove_flags_t;

    .line 35
    .line 36
    sget-object v0, Lcom/frostwire/jlibtorrent/swig/session_handle;->g:Lcom/frostwire/jlibtorrent/swig/remove_flags_t;

    .line 37
    .line 38
    sput-object v0, Lcom/frostwire/jlibtorrent/SessionHandle;->f:Lcom/frostwire/jlibtorrent/swig/remove_flags_t;

    .line 39
    .line 40
    sget-object v0, Lcom/frostwire/jlibtorrent/swig/session_handle;->i:Lcom/frostwire/jlibtorrent/swig/reopen_network_flags_t;

    .line 41
    .line 42
    sput-object v0, Lcom/frostwire/jlibtorrent/SessionHandle;->g:Lcom/frostwire/jlibtorrent/swig/reopen_network_flags_t;

    .line 43
    .line 44
    return-void
.end method
