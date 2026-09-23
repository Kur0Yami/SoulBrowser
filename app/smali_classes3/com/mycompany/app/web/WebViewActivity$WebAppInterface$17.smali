.class Lcom/mycompany/app/web/WebViewActivity$WebAppInterface$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;->onVidDet(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$WebAppInterface$17;->c:Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$WebAppInterface$17;->c:Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;->b:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget v1, v0, Lcom/mycompany/app/web/WebViewActivity;->oh:I

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/4 v3, 0x1

    .line 13
    const/4 v4, 0x0

    .line 14
    if-ne v1, v3, :cond_1

    .line 15
    .line 16
    invoke-virtual {v2, v4}, Lcom/mycompany/app/web/WebNestView;->D(Ljava/util/ArrayList;)V

    .line 17
    .line 18
    .line 19
    const-string v1, "pub_dummy"

    .line 20
    .line 21
    invoke-virtual {v0, v1, v4, v4, v4}, Lcom/mycompany/app/web/WebViewActivity;->D7(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    const/4 v3, 0x2

    .line 26
    if-ne v1, v3, :cond_2

    .line 27
    .line 28
    invoke-virtual {v2, v4}, Lcom/mycompany/app/web/WebNestView;->D(Ljava/util/ArrayList;)V

    .line 29
    .line 30
    .line 31
    const-string v1, "pgf_dummy"

    .line 32
    .line 33
    invoke-virtual {v0, v1, v4, v4, v4}, Lcom/mycompany/app/web/WebViewActivity;->D7(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    const-string v1, "vid_dummy"

    .line 38
    .line 39
    invoke-virtual {v0, v1, v4, v4, v4}, Lcom/mycompany/app/web/WebViewActivity;->D7(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
