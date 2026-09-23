.class Lcom/mycompany/app/dialog/DialogSetRate$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetRate;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetRate;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetRate$4;->c:Lcom/mycompany/app/dialog/DialogSetRate;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetRate$4;->c:Lcom/mycompany/app/dialog/DialogSetRate;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogSetRate;->e0:Lcom/mycompany/app/view/MySwitchView;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZtwo;->V:Z

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    xor-int/2addr v0, v1

    .line 12
    sput-boolean v0, Lcom/mycompany/app/pref/PrefZtwo;->V:Z

    .line 13
    .line 14
    iget-object v2, p1, Lcom/mycompany/app/dialog/DialogSetRate;->a0:Landroid/content/Context;

    .line 15
    .line 16
    const/16 v3, 0x10

    .line 17
    .line 18
    const-string v4, "mYouSpdSave"

    .line 19
    .line 20
    invoke-static {v3, v2, v4, v0}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogSetRate;->e0:Lcom/mycompany/app/view/MySwitchView;

    .line 24
    .line 25
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZtwo;->V:Z

    .line 26
    .line 27
    invoke-virtual {p1, v0, v1}, Lcom/mycompany/app/view/MySwitchView;->b(ZZ)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
