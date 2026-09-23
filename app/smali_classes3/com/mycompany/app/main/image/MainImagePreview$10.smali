.class Lcom/mycompany/app/main/image/MainImagePreview$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/image/MainImagePreview;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImagePreview;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImagePreview$10;->c:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImagePreview$10;->c:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/main/image/MainImagePreview;->h1:Lcom/mycompany/app/view/MyFadeFrame;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyFadeFrame;->d(Z)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lcom/mycompany/app/main/image/MainImagePreview;->x0(Lcom/mycompany/app/main/image/MainImagePreview;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Landroid/content/Intent;

    .line 17
    .line 18
    iget-object v2, p1, Lcom/mycompany/app/main/image/MainImagePreview;->f1:Landroid/content/Context;

    .line 19
    .line 20
    const-class v3, Lcom/mycompany/app/editor/EditorActivity;

    .line 21
    .line 22
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 23
    .line 24
    .line 25
    const-string v2, "EXTRA_PATH"

    .line 26
    .line 27
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    const-string v0, "EXTRA_TYPE"

    .line 31
    .line 32
    iget-object v2, p1, Lcom/mycompany/app/main/image/MainImagePreview;->y1:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    const-string v0, "EXTRA_REFERER"

    .line 38
    .line 39
    iget-object v2, p1, Lcom/mycompany/app/main/image/MainImagePreview;->z1:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    const/16 v0, 0xd

    .line 45
    .line 46
    invoke-virtual {p1, v1, v0}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
