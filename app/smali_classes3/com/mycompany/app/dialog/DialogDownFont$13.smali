.class Lcom/mycompany/app/dialog/DialogDownFont$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownFont;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownFont;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownFont$13;->c:Lcom/mycompany/app/dialog/DialogDownFont;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFont$13;->c:Lcom/mycompany/app/dialog/DialogDownFont;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFont;->y0:Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogDownFont;->y0:Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 7
    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    iget-object v5, v1, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->b:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownFont;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownFont;->u0:Lcom/mycompany/app/dialog/DialogDownLink;

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogDownFont;->F()V

    .line 23
    .line 24
    .line 25
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFont;->z0:Lcom/mycompany/app/main/MainDownAdapter$DownListItem;

    .line 26
    .line 27
    new-instance v3, Lcom/mycompany/app/dialog/DialogDownLink;

    .line 28
    .line 29
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogDownFont;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 30
    .line 31
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogDownFont;->e0:Ljava/lang/String;

    .line 32
    .line 33
    iget-wide v7, v1, Lcom/mycompany/app/main/MainDownAdapter$DownListItem;->l:J

    .line 34
    .line 35
    new-instance v9, Lcom/mycompany/app/dialog/DialogDownFont$14;

    .line 36
    .line 37
    invoke-direct {v9, v0}, Lcom/mycompany/app/dialog/DialogDownFont$14;-><init>(Lcom/mycompany/app/dialog/DialogDownFont;)V

    .line 38
    .line 39
    .line 40
    invoke-direct/range {v3 .. v9}, Lcom/mycompany/app/dialog/DialogDownLink;-><init>(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Ljava/lang/String;JLcom/mycompany/app/dialog/DialogPreview$PreviewListener;)V

    .line 41
    .line 42
    .line 43
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogDownFont;->u0:Lcom/mycompany/app/dialog/DialogDownLink;

    .line 44
    .line 45
    new-instance v1, Lcom/mycompany/app/dialog/DialogDownFont$15;

    .line 46
    .line 47
    invoke-direct {v1, v0}, Lcom/mycompany/app/dialog/DialogDownFont$15;-><init>(Lcom/mycompany/app/dialog/DialogDownFont;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    :goto_0
    const/4 v1, 0x0

    .line 54
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogDownFont;->v0:Z

    .line 55
    .line 56
    return-void
.end method
