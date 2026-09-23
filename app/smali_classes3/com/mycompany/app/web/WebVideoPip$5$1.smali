.class Lcom/mycompany/app/web/WebVideoPip$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebVideoPip$5;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebVideoPip$5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoPip$5$1;->c:Lcom/mycompany/app/web/WebVideoPip$5;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoPip$5$1;->c:Lcom/mycompany/app/web/WebVideoPip$5;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebVideoPip$5;->c:Lcom/mycompany/app/web/WebVideoPip;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoPip;->x:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/web/WebVideoPip;->y:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    iput-object v3, v0, Lcom/mycompany/app/web/WebVideoPip;->x:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v3, v0, Lcom/mycompany/app/web/WebVideoPip;->y:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/mycompany/app/web/WebVideoPip;->m:Lcom/mycompany/app/view/MyWebSafe;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-static {v0, v1, v2}, Lcom/mycompany/app/main/MainUtil;->r6(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
