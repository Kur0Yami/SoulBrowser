.class Lcom/mycompany/app/web/WebVideoPip$7$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebVideoPip$7$1$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebVideoPip$7$1$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoPip$7$1$1$1;->c:Lcom/mycompany/app/web/WebVideoPip$7$1$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoPip$7$1$1$1;->c:Lcom/mycompany/app/web/WebVideoPip$7$1$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebVideoPip$7$1$1;->c:Lcom/mycompany/app/web/WebVideoPip$7$1;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/web/WebVideoPip$7$1;->c:Lcom/mycompany/app/web/WebVideoPip$7;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/mycompany/app/web/WebVideoPip$7;->c:Lcom/mycompany/app/web/WebVideoPip;

    .line 8
    .line 9
    iget v1, v0, Lcom/mycompany/app/web/WebVideoPip;->r:I

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-eq v1, v2, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const/4 v1, 0x2

    .line 16
    iput v1, v0, Lcom/mycompany/app/web/WebVideoPip;->r:I

    .line 17
    .line 18
    invoke-static {v0}, Lcom/mycompany/app/web/WebVideoPip;->g(Lcom/mycompany/app/web/WebVideoPip;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
