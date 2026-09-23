.class Lcom/mycompany/app/main/MainTransText$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainTransText$7;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainTransText$7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainTransText$7$1;->c:Lcom/mycompany/app/main/MainTransText$7;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTransText$7$1;->c:Lcom/mycompany/app/main/MainTransText$7;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/main/MainTransText$7;->c:Lcom/mycompany/app/main/MainTransText;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/main/MainTransText;->u:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    iput-object v2, v0, Lcom/mycompany/app/main/MainTransText;->u:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/main/MainTransText;->g:Lcom/mycompany/app/view/MyWebSafe;

    .line 18
    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    :goto_0
    return-void

    .line 22
    :cond_1
    iget-object v3, v0, Lcom/mycompany/app/main/MainTransText;->o:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v2, v3, v1}, Lcom/mycompany/app/main/MainUtil;->r6(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance v1, Lcom/mycompany/app/main/MainTransText$7$1$1;

    .line 28
    .line 29
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/MainTransText$7$1$1;-><init>(Lcom/mycompany/app/main/MainTransText$7$1;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainTransText;->c(Ljava/lang/Runnable;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
