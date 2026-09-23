.class Lcom/mycompany/app/web/WebViewActivity$553;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$553;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$553;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->p6:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_2

    .line 7
    .line 8
    iput v2, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->G1:I

    .line 9
    .line 10
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->L1:Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->L1:Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 16
    .line 17
    iget-object v4, v3, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->b:Ljava/lang/String;

    .line 18
    .line 19
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->C1:Ljava/lang/String;

    .line 20
    .line 21
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->T0:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v4, v3, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->i:Ljava/lang/String;

    .line 24
    .line 25
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->O1:Ljava/lang/String;

    .line 26
    .line 27
    iget-wide v4, v3, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->l:J

    .line 28
    .line 29
    iput-wide v4, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->n1:J

    .line 30
    .line 31
    iget-object v3, v3, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->c:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v1, v3}, Lcom/mycompany/app/dialog/DialogDownUrl;->c0(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Lcom/mycompany/app/dialog/DialogDownUrl;->Y(Z)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->M1:Lcom/mycompany/app/main/MainDownSvc$M3u8Item;

    .line 41
    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->M1:Lcom/mycompany/app/main/MainDownSvc$M3u8Item;

    .line 45
    .line 46
    invoke-virtual {v1, v3}, Lcom/mycompany/app/dialog/DialogDownUrl;->a0(Lcom/mycompany/app/main/MainDownSvc$M3u8Item;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Lcom/mycompany/app/dialog/DialogDownUrl;->Y(Z)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->N1:Lcom/mycompany/app/web/WebViewActivity$FaceItem;

    .line 54
    .line 55
    if-eqz v3, :cond_2

    .line 56
    .line 57
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->N1:Lcom/mycompany/app/web/WebViewActivity$FaceItem;

    .line 58
    .line 59
    iget-object v4, v3, Lcom/mycompany/app/web/WebViewActivity$FaceItem;->c:Ljava/lang/String;

    .line 60
    .line 61
    iget-object v5, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->T0:Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {v5, v4}, Lcom/mycompany/app/dialog/DialogDownUrl;->O(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    iput-object v5, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->C1:Ljava/lang/String;

    .line 68
    .line 69
    iget-object v5, v3, Lcom/mycompany/app/web/WebViewActivity$FaceItem;->a:Ljava/lang/String;

    .line 70
    .line 71
    iput-object v5, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->T0:Ljava/lang/String;

    .line 72
    .line 73
    iget-object v5, v3, Lcom/mycompany/app/web/WebViewActivity$FaceItem;->b:Ljava/lang/String;

    .line 74
    .line 75
    iput-object v5, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->O1:Ljava/lang/String;

    .line 76
    .line 77
    iget-wide v5, v3, Lcom/mycompany/app/web/WebViewActivity$FaceItem;->f:J

    .line 78
    .line 79
    iput-wide v5, v1, Lcom/mycompany/app/dialog/DialogDownUrl;->n1:J

    .line 80
    .line 81
    invoke-virtual {v1, v4}, Lcom/mycompany/app/dialog/DialogDownUrl;->c0(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v2}, Lcom/mycompany/app/dialog/DialogDownUrl;->Y(Z)V

    .line 85
    .line 86
    .line 87
    :cond_2
    :goto_0
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->in:Z

    .line 88
    .line 89
    return-void
.end method
