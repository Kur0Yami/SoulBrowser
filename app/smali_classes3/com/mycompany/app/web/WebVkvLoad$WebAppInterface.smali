.class Lcom/mycompany/app/web/WebVkvLoad$WebAppInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/web/WebVkvLoad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebAppInterface"
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebVkvLoad;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebVkvLoad;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebVkvLoad$WebAppInterface;->a:Lcom/mycompany/app/web/WebVkvLoad;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onVidData(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/mycompany/app/web/WebVkvLoad$WebAppInterface;->a:Lcom/mycompany/app/web/WebVkvLoad;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebVkvLoad;->c()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iput-object p1, v1, Lcom/mycompany/app/web/WebVkvLoad;->m:Ljava/lang/String;

    .line 14
    .line 15
    iget-object p1, v1, Lcom/mycompany/app/web/WebVkvLoad;->a:Lcom/mycompany/app/main/MainActivity;

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    new-instance v0, Lcom/mycompany/app/web/WebVkvLoad$7;

    .line 21
    .line 22
    invoke-direct {v0, v1}, Lcom/mycompany/app/web/WebVkvLoad$7;-><init>(Lcom/mycompany/app/web/WebVkvLoad;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
