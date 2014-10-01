.class Lcom/android/OriginalSettings/notificationlight/LightSettingsDialog$PulseSpeedAdapter;
.super Landroid/widget/BaseAdapter;
.source "LightSettingsDialog.java"

# interfaces
.implements Landroid/widget/SpinnerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/notificationlight/LightSettingsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PulseSpeedAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/notificationlight/LightSettingsDialog;

.field private times:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/OriginalSettings/notificationlight/LightSettingsDialog;II)V
    .locals 7
    .parameter
    .parameter "timeNamesResource"
    .parameter "timeValuesResource"

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/OriginalSettings/notificationlight/LightSettingsDialog$PulseSpeedAdapter;->this$0:Lcom/android/OriginalSettings/notificationlight/LightSettingsDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 206
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/OriginalSettings/notificationlight/LightSettingsDialog$PulseSpeedAdapter;->times:Ljava/util/ArrayList;

    .line 208
    invoke-virtual {p1}, Lcom/android/OriginalSettings/notificationlight/LightSettingsDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, time_names:[Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/OriginalSettings/notificationlight/LightSettingsDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, time_values:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 212
    iget-object v3, p0, Lcom/android/OriginalSettings/notificationlight/LightSettingsDialog$PulseSpeedAdapter;->times:Ljava/util/ArrayList;

    new-instance v4, Landroid/util/Pair;

    aget-object v5, v1, v0

    aget-object v6, v2, v0

    invoke-static {v6}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/android/OriginalSettings/notificationlight/LightSettingsDialog;IILjava/lang/Integer;)V
    .locals 4
    .parameter
    .parameter "timeNamesResource"
    .parameter "timeValuesResource"
    .parameter "customTime"

    .prologue
    .line 229
    invoke-direct {p0, p1, p2, p3}, Lcom/android/OriginalSettings/notificationlight/LightSettingsDialog$PulseSpeedAdapter;-><init>(Lcom/android/OriginalSettings/notificationlight/LightSettingsDialog;II)V

    .line 232
    invoke-virtual {p0, p4}, Lcom/android/OriginalSettings/notificationlight/LightSettingsDialog$PulseSpeedAdapter;->getTimePosition(Ljava/lang/Integer;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/OriginalSettings/notificationlight/LightSettingsDialog$PulseSpeedAdapter;->times:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    invoke-virtual {p1}, Lcom/android/OriginalSettings/notificationlight/LightSettingsDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801af

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/OriginalSettings/notificationlight/LightSettingsDialog$PulseSpeedAdapter;->times:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/util/Pair;
    .locals 1
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/OriginalSettings/notificationlight/LightSettingsDialog$PulseSpeedAdapter;->times:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 202
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/notificationlight/LightSettingsDialog$PulseSpeedAdapter;->getItem(I)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 267
    int-to-long v0, p1

    return-wide v0
.end method

.method public getTimePosition(Ljava/lang/Integer;)I
    .locals 2
    .parameter "time"

    .prologue
    .line 246
    const/4 v0, 0x0

    .local v0, position:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/notificationlight/LightSettingsDialog$PulseSpeedAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 247
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/notificationlight/LightSettingsDialog$PulseSpeedAdapter;->getItem(I)Landroid/util/Pair;

    move-result-object v1

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    .end local v0           #position:I
    :goto_1
    return v0

    .line 246
    .restart local v0       #position:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "view"
    .parameter "parent"

    .prologue
    .line 272
    if-nez p2, :cond_0

    .line 273
    iget-object v1, p0, Lcom/android/OriginalSettings/notificationlight/LightSettingsDialog$PulseSpeedAdapter;->this$0:Lcom/android/OriginalSettings/notificationlight/LightSettingsDialog;

    #getter for: Lcom/android/OriginalSettings/notificationlight/LightSettingsDialog;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v1}, Lcom/android/OriginalSettings/notificationlight/LightSettingsDialog;->access$100(Lcom/android/OriginalSettings/notificationlight/LightSettingsDialog;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04008f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 276
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/notificationlight/LightSettingsDialog$PulseSpeedAdapter;->getItem(I)Landroid/util/Pair;

    move-result-object v0

    .line 277
    .local v0, entry:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    const v1, 0x7f0d014b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    return-object p2
.end method
