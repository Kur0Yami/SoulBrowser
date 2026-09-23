.class final Lcom/frostwire/jlibtorrent/Logger;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/logging/Logger;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/logging/Logger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/frostwire/jlibtorrent/Logger;->a:Ljava/util/logging/Logger;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/frostwire/jlibtorrent/Logger;->b:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method
