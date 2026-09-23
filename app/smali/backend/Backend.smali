.class public abstract Lbackend/Backend;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbackend/Backend$proxyDoHQueryToken;,
        Lbackend/Backend$proxyDoHListener;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lgo/Seq;->touch()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lprotect/Protect;->touch()V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lintra/Intra;->touch()V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lbackend/Backend;->_init()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native _init()V
.end method

.method public static native connectSession(JLjava/lang/String;Lbackend/DoHServer;Lprotect/Protector;Lintra/Listener;)Lbackend/Session;
.end method

.method public static native newDoHServer(Ljava/lang/String;Ljava/lang/String;Lprotect/Protector;Lbackend/DoHListener;)Lbackend/DoHServer;
.end method

.method public static native probe(Lbackend/DoHServer;)V
.end method

.method public static touch()V
    .locals 0

    return-void
.end method
