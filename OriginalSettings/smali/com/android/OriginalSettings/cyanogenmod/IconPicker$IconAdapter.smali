.class Lcom/android/OriginalSettings/cyanogenmod/IconPicker$IconAdapter;
.super Landroid/widget/BaseAdapter;
.source "IconPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/cyanogenmod/IconPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IconAdapter"
.end annotation


# instance fields
.field icons:Landroid/content/res/TypedArray;

.field labels:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/OriginalSettings/cyanogenmod/IconPicker;


# direct methods
.method public constructor <init>(Lcom/android/OriginalSettings/cyanogenmod/IconPicker;)V
    .locals 2
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/OriginalSettings/cyanogenmod/IconPicker$IconAdapter;->this$0:Lcom/android/OriginalSettings/cyanogenmod/IconPicker;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 149
    #getter for: Lcom/android/OriginalSettings/cyanogenmod/IconPicker;->mResources:Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/android/OriginalSettings/cyanogenmod/IconPicker;->access$200(Lcom/android/OriginalSettings/cyanogenmod/IconPicker;)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/IconPicker$IconAdapter;->labels:[Ljava/lang/String;

    .line 150
    #getter for: Lcom/android/OriginalSettings/cyanogenmod/IconPicker;->mResources:Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/android/OriginalSettings/cyanogenmod/IconPicker;->access$200(Lcom/android/OriginalSettings/cyanogenmod/IconPicker;)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/IconPicker$IconAdapter;->icons:Landroid/content/res/TypedArray;

    .line 151
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/IconPicker$IconAdapter;->labels:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/IconPicker$IconAdapter;->icons:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 172
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemReference(I)Ljava/lang/String;
    .locals 4
    .parameter "position"

    .prologue
    .line 164
    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/IconPicker$IconAdapter;->icons:Landroid/content/res/TypedArray;

    invoke-virtual {v3, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, name:Ljava/lang/String;
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 166
    .local v2, separatorIndex:I
    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 167
    .local v1, periodIndex:I
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 177
    move-object v1, p2

    .line 178
    .local v1, iView:Landroid/view/View;
    if-nez p2, :cond_0

    .line 179
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/IconPicker$IconAdapter;->this$0:Lcom/android/OriginalSettings/cyanogenmod/IconPicker;

    #getter for: Lcom/android/OriginalSettings/cyanogenmod/IconPicker;->mParent:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/OriginalSettings/cyanogenmod/IconPicker;->access$300(Lcom/android/OriginalSettings/cyanogenmod/IconPicker;)Landroid/app/Activity;

    move-result-object v4

    const v5, 0x1090003

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 181
    :cond_0
    const v4, 0x1020014

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 182
    .local v3, tt:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/IconPicker$IconAdapter;->labels:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/cyanogenmod/IconPicker$IconAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 184
    .local v2, ic:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/IconPicker$IconAdapter;->this$0:Lcom/android/OriginalSettings/cyanogenmod/IconPicker;

    #getter for: Lcom/android/OriginalSettings/cyanogenmod/IconPicker;->mParent:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/OriginalSettings/cyanogenmod/IconPicker;->access$300(Lcom/android/OriginalSettings/cyanogenmod/IconPicker;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070022

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 185
    .local v0, bound:I
    invoke-virtual {v2, v7, v7, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 186
    invoke-virtual {v3, v2, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 187
    return-object v1
.end method
