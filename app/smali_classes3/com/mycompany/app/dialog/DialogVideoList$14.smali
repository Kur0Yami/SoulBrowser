.class Lcom/mycompany/app/dialog/DialogVideoList$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogVideoList;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogVideoList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogVideoList$14;->c:Lcom/mycompany/app/dialog/DialogVideoList;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogVideoList$14;->c:Lcom/mycompany/app/dialog/DialogVideoList;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogVideoList;->J0:Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogVideoList;->J0:Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 7
    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    iget-object v2, v1, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->b:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->O0(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogVideoList;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 17
    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogVideoList;->E0:Lcom/mycompany/app/dialog/DialogDownLink;

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogVideoList;->E()V

    .line 27
    .line 28
    .line 29
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogVideoList;->L0:Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 30
    .line 31
    new-instance v3, Lcom/mycompany/app/dialog/DialogDownLink;

    .line 32
    .line 33
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogVideoList;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 34
    .line 35
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogVideoList;->e0:Ljava/lang/String;

    .line 36
    .line 37
    iget-wide v7, v1, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->l:J

    .line 38
    .line 39
    new-instance v9, Lcom/mycompany/app/dialog/DialogVideoList$16;

    .line 40
    .line 41
    invoke-direct {v9, v0}, Lcom/mycompany/app/dialog/DialogVideoList$16;-><init>(Lcom/mycompany/app/dialog/DialogVideoList;)V

    .line 42
    .line 43
    .line 44
    invoke-direct/range {v3 .. v9}, Lcom/mycompany/app/dialog/DialogDownLink;-><init>(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Ljava/lang/String;JLcom/mycompany/app/dialog/DialogPreview$PreviewListener;)V

    .line 45
    .line 46
    .line 47
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogVideoList;->E0:Lcom/mycompany/app/dialog/DialogDownLink;

    .line 48
    .line 49
    new-instance v1, Lcom/mycompany/app/dialog/DialogVideoList$17;

    .line 50
    .line 51
    invoke-direct {v1, v0}, Lcom/mycompany/app/dialog/DialogVideoList$17;-><init>(Lcom/mycompany/app/dialog/DialogVideoList;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 55
    .line 56
    .line 57
    :cond_2
    :goto_0
    const/4 v1, 0x0

    .line 58
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogVideoList;->G0:Z

    .line 59
    .line 60
    return-void
.end method
