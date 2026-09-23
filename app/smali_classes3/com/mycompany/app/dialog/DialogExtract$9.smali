.class Lcom/mycompany/app/dialog/DialogExtract$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogExtract;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogExtract;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogExtract$9;->c:Lcom/mycompany/app/dialog/DialogExtract;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 4

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    goto :goto_2

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogExtract$9;->c:Lcom/mycompany/app/dialog/DialogExtract;

    .line 5
    .line 6
    iget-object v0, p2, Lcom/mycompany/app/dialog/DialogExtract;->n0:[Lcom/mycompany/app/view/MyEditText;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_1
    array-length v0, v0

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, v0, :cond_3

    .line 14
    .line 15
    iget-object v2, p2, Lcom/mycompany/app/dialog/DialogExtract;->n0:[Lcom/mycompany/app/view/MyEditText;

    .line 16
    .line 17
    aget-object v2, v2, v1

    .line 18
    .line 19
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_2

    .line 24
    .line 25
    const v3, -0xe19938

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    const v3, -0x252526

    .line 30
    .line 31
    .line 32
    :goto_1
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyEditText;->setElineColor(I)V

    .line 33
    .line 34
    .line 35
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_3
    :goto_2
    return-void
.end method
