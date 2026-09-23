.class Lcom/mycompany/app/web/WebViewActivity$67$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$67;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$67;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$67$1;->c:Lcom/mycompany/app/web/WebViewActivity$67;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$67$1;->c:Lcom/mycompany/app/web/WebViewActivity$67;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$67;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->fc:Z

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->gc:Landroid/graphics/Bitmap;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->gc:Landroid/graphics/Bitmap;

    .line 11
    .line 12
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/web/WebViewActivity;->p7(Landroid/graphics/Bitmap;Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
