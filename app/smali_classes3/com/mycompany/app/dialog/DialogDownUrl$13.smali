.class Lcom/mycompany/app/dialog/DialogDownUrl$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownUrl;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownUrl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownUrl$13;->c:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownUrl$13;->c:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogDownUrl;->T0:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->O0(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    iput-object v1, p1, Lcom/mycompany/app/dialog/DialogDownUrl;->t2:Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 11
    .line 12
    iput-object v1, p1, Lcom/mycompany/app/dialog/DialogDownUrl;->u2:Lcom/mycompany/app/main/MainDownSvc$M3u8Item;

    .line 13
    .line 14
    iput-object v1, p1, Lcom/mycompany/app/dialog/DialogDownUrl;->v2:Lcom/mycompany/app/web/WebViewActivity$FaceItem;

    .line 15
    .line 16
    invoke-static {p1, v0}, Lcom/mycompany/app/dialog/DialogDownUrl;->J(Lcom/mycompany/app/dialog/DialogDownUrl;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
