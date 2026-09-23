.class Lcom/mycompany/app/web/WebViewActivity$370;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogDownBlob$DialogBlobListener;


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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$370;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(JLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZone;->l0:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/web/WebViewActivity$370;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 8
    .line 9
    const/4 v4, 0x3

    .line 10
    const/4 v7, 0x0

    .line 11
    move-wide v2, p1

    .line 12
    move-object v5, p3

    .line 13
    move-object v6, p4

    .line 14
    invoke-virtual/range {v1 .. v7}, Lcom/mycompany/app/web/WebViewActivity;->H9(JILjava/lang/String;Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    sget p1, Lnet/kaki87/soul2/testing/R$string;->down_complete:I

    .line 19
    .line 20
    invoke-static {v1, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
