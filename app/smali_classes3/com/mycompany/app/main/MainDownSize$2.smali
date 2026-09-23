.class Lcom/mycompany/app/main/MainDownSize$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainDownSize;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainDownSize;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainDownSize$2;->c:Lcom/mycompany/app/main/MainDownSize;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSize$2;->c:Lcom/mycompany/app/main/MainDownSize;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainDownSize;->c:Ljava/net/HttpURLConnection;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-object v1, v0, Lcom/mycompany/app/main/MainDownSize;->c:Ljava/net/HttpURLConnection;

    .line 12
    .line 13
    :cond_0
    return-void
.end method
