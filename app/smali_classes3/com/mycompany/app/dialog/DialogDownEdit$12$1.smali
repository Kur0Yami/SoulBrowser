.class Lcom/mycompany/app/dialog/DialogDownEdit$12$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownEdit$12;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownEdit$12;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownEdit$12$1;->c:Lcom/mycompany/app/dialog/DialogDownEdit$12;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownEdit$12$1;->c:Lcom/mycompany/app/dialog/DialogDownEdit$12;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownEdit$12;->c:Lcom/mycompany/app/dialog/DialogDownEdit;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogDownEdit;->E0:Lcom/mycompany/app/main/MainUri$UriItem;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iput-object v3, v1, Lcom/mycompany/app/dialog/DialogDownEdit;->E0:Lcom/mycompany/app/main/MainUri$UriItem;

    .line 9
    .line 10
    iget-object v4, v1, Lcom/mycompany/app/dialog/DialogDownEdit;->u0:Lcom/mycompany/app/dialog/DialogDownPage$DownPageListener;

    .line 11
    .line 12
    if-eqz v4, :cond_1

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    iget-object v2, v2, Lcom/mycompany/app/main/MainUri$UriItem;->e:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogDownEdit;->r0:Landroid/graphics/Bitmap;

    .line 19
    .line 20
    invoke-interface {v4, v3, v2, v1}, Lcom/mycompany/app/dialog/DialogDownPage$DownPageListener;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogDownEdit;->r0:Landroid/graphics/Bitmap;

    .line 25
    .line 26
    invoke-interface {v4, v3, v3, v1}, Lcom/mycompany/app/dialog/DialogDownPage$DownPageListener;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogDownEdit$12;->c:Lcom/mycompany/app/dialog/DialogDownEdit;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogDownEdit;->dismiss()V

    .line 32
    .line 33
    .line 34
    return-void
.end method
