.class Lcom/mycompany/app/dialog/DialogEditUrl$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogEditUrl;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditUrl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditUrl$6;->c:Lcom/mycompany/app/dialog/DialogEditUrl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogEditUrl$6;->c:Lcom/mycompany/app/dialog/DialogEditUrl;

    .line 5
    .line 6
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogEditUrl;->g0:Lcom/mycompany/app/view/MyEditText;

    .line 7
    .line 8
    const v0, -0x252526

    .line 9
    .line 10
    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    invoke-virtual {p2, v0}, Lcom/mycompany/app/view/MyEditText;->setElineColor(I)V

    .line 14
    .line 15
    .line 16
    :cond_1
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogEditUrl;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 17
    .line 18
    if-eqz p2, :cond_2

    .line 19
    .line 20
    const v1, -0xe19938

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, v1}, Lcom/mycompany/app/view/MyEditText;->setElineColor(I)V

    .line 24
    .line 25
    .line 26
    :cond_2
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogEditUrl;->k0:Lcom/mycompany/app/view/MyEditText;

    .line 27
    .line 28
    if-eqz p1, :cond_3

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyEditText;->setElineColor(I)V

    .line 31
    .line 32
    .line 33
    :cond_3
    :goto_0
    return-void
.end method
