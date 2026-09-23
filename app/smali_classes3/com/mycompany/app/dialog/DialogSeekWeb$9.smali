.class Lcom/mycompany/app/dialog/DialogSeekWeb$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSeekWeb;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSeekWeb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekWeb$9;->c:Lcom/mycompany/app/dialog/DialogSeekWeb;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekWeb$9;->c:Lcom/mycompany/app/dialog/DialogSeekWeb;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSeekWeb;->d0:Lcom/mycompany/app/main/MainActivity;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSeekWeb;->m1:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogSeekWeb;->o1:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 14
    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    :goto_0
    return-void

    .line 18
    :cond_2
    if-eqz v0, :cond_3

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogEditIcon;->dismiss()V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-object v0, p1, Lcom/mycompany/app/dialog/DialogSeekWeb;->m1:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 25
    .line 26
    :cond_3
    new-instance v0, Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 27
    .line 28
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogSeekWeb;->d0:Lcom/mycompany/app/main/MainActivity;

    .line 29
    .line 30
    new-instance v2, Lcom/mycompany/app/dialog/DialogSeekWeb$30;

    .line 31
    .line 32
    invoke-direct {v2, p1}, Lcom/mycompany/app/dialog/DialogSeekWeb$30;-><init>(Lcom/mycompany/app/dialog/DialogSeekWeb;)V

    .line 33
    .line 34
    .line 35
    const/4 v3, 0x2

    .line 36
    invoke-direct {v0, v1, v3, v2}, Lcom/mycompany/app/dialog/DialogEditIcon;-><init>(Lcom/mycompany/app/main/MainActivity;ILcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p1, Lcom/mycompany/app/dialog/DialogSeekWeb;->m1:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 40
    .line 41
    new-instance v1, Lcom/mycompany/app/dialog/DialogSeekWeb$31;

    .line 42
    .line 43
    invoke-direct {v1, p1}, Lcom/mycompany/app/dialog/DialogSeekWeb$31;-><init>(Lcom/mycompany/app/dialog/DialogSeekWeb;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
