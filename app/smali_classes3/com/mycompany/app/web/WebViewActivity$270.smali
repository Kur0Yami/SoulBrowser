.class Lcom/mycompany/app/web/WebViewActivity$270;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/web/WebVideoFrame$VideoFrameListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$270;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefRead;->q:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/web/WebViewActivity$270;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->o9()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {v1, v0}, Lcom/mycompany/app/web/WebViewActivity;->C7(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final b(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$270;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->S5:Lcom/mycompany/app/web/WebVideoPip;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/mycompany/app/web/WebVideoPip;->setYouPos(J)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
