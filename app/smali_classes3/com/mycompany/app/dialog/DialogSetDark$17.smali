.class Lcom/mycompany/app/dialog/DialogSetDark$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetDark;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetDark;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetDark$17;->c:Lcom/mycompany/app/dialog/DialogSetDark;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogSetDark;->y0:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetDark$17;->c:Lcom/mycompany/app/dialog/DialogSetDark;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogSetDark;->G(Z)V

    .line 7
    .line 8
    .line 9
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetDark;->j0:Lcom/mycompany/app/view/MyLineLinear;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iget-object v2, v1, Lcom/mycompany/app/view/MyLineLinear;->k:Landroid/graphics/Paint;

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 18
    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    const v3, -0xc0c0c1

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const v3, -0x252526

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyLineLinear;->invalidate()V

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogSetDark;->r0:Z

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogSetDark;->r0:Z

    .line 40
    .line 41
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetDark;->m0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetDark;->C()Ljava/util/ArrayList;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v1, v3}, Lcom/mycompany/app/setting/SettingListAdapter;->E(Ljava/util/List;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogSetDark;->c0:Lcom/mycompany/app/dialog/DialogSetDark$SetDarkListener;

    .line 53
    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    invoke-interface {v0, v2}, Lcom/mycompany/app/dialog/DialogSetDark$SetDarkListener;->a(Z)V

    .line 57
    .line 58
    .line 59
    :cond_3
    return-void
.end method
