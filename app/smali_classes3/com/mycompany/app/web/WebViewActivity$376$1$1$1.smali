.class Lcom/mycompany/app/web/WebViewActivity$376$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$376$1$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$376$1$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$376$1$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$376$1$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$376$1$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$376$1$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$376$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$376$1;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$376$1;->c:Lcom/mycompany/app/web/WebViewActivity$376;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/mycompany/app/web/WebViewActivity$376;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 8
    .line 9
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    iput v2, v1, Lcom/mycompany/app/web/WebViewActivity;->y6:I

    .line 19
    .line 20
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$376$1;->c:Lcom/mycompany/app/web/WebViewActivity$376;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$376;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 23
    .line 24
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 25
    .line 26
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 27
    .line 28
    iget-wide v3, v0, Lcom/mycompany/app/web/WebViewActivity;->z6:J

    .line 29
    .line 30
    new-instance v0, Lcom/mycompany/app/web/WebViewActivity$376$1$1$1$1;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebViewActivity$376$1$1$1$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$376$1$1$1;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/mycompany/app/view/MyWebCoord;->D(Lcom/mycompany/app/web/WebNestView;JLcom/mycompany/app/view/MyWebCoord$MyCaptureListener;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
