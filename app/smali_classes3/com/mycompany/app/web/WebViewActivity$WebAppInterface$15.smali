.class Lcom/mycompany/app/web/WebViewActivity$WebAppInterface$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;->onBlobDown(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$WebAppInterface$15;->c:Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$WebAppInterface$15;->c:Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;->b:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->kh:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, v1, Lcom/mycompany/app/web/WebViewActivity;->lh:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, v1, Lcom/mycompany/app/web/WebViewActivity;->mh:Ljava/lang/String;

    .line 10
    .line 11
    iget-wide v5, v1, Lcom/mycompany/app/web/WebViewActivity;->nh:J

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->kh:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->lh:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->mh:Ljava/lang/String;

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->dk:Z

    .line 22
    .line 23
    const/16 v7, 0x27

    .line 24
    .line 25
    const/4 v8, 0x0

    .line 26
    invoke-virtual/range {v1 .. v8}, Lcom/mycompany/app/web/WebViewActivity;->l9(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
